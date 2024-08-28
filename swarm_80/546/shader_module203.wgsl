struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(i32(-2147483648), false), Struct_1(1i, true), Struct_1(84559i, false), Struct_1(-1i, false), Struct_1(2147483647i, true), Struct_1(-48106i, true), Struct_1(0i, true), Struct_1(1i, false), Struct_1(35273i, true), Struct_1(-16524i, false), Struct_1(-25508i, true), Struct_1(35315i, false), Struct_1(29617i, false));

var<private> global4: u32 = 1u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = false;
    global0 = Struct_1(global0.a, global2.x);
    var var_1 = global2.yzx;
    var var_2 = firstLeadingBit(firstTrailingBit(reverseBits(reverseBits(abs(vec3<i32>(arg_3.a, 12755i, -2147483647i))))));
    var var_3 = u_input.a.xy ^ vec2<u32>(u_input.a.x, ~(0u & u_input.b) << (u_input.a.x % 32u));
    return countOneBits(vec4<u32>(_wgslsmith_div_u32(~1u << (u_input.b % 32u), 4294967295u), u_input.b, 1691u, var_3.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = select(~min(abs(_wgslsmith_add_vec4_u32(vec4<u32>(2956u, u_input.b, 37968u, 77410u), vec4<u32>(4294967295u, u_input.a.x, u_input.b, 4294967295u))), func_3(reverseBits(arg_1.x), all(vec4<bool>(true, global2.x, global0.b, false)), arg_0.x, arg_2)), ~(select(vec4<u32>(u_input.b, 13538u, 4294967295u, u_input.b), vec4<u32>(92413u, 1u, u_input.b, 1u), arg_2.b) << (~vec4<u32>(0u, u_input.b, u_input.b, 1u) % vec4<u32>(32u))) << (~(~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b) ^ vec4<u32>(u_input.b, 79709u, u_input.b, u_input.b))) % vec4<u32>(32u)), vec4<bool>(arg_2.b, u_input.b == select(4294967295u, 0u >> (u_input.b % 32u), true), false, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-198f, -415f, -740f, arg_0.x), arg_0) + _wgslsmith_f_op_vec4_f32(-arg_0)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - -761f), _wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_2 = arg_1.xy;
    global0 = Struct_1(0i, false);
    global1 = u_input.c | _wgslsmith_sub_i32(i32(-1i) * -(25032i >> (u_input.b % 32u)), arg_2.a | -_wgslsmith_div_i32(global0.a, 2147483647i));
    return vec2<bool>(!global2.x, ~firstLeadingBit(u_input.d.x) == 9033i);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = Struct_1(u_input.c, !any(select(!vec2<bool>(true, global0.b), func_2(vec4<f32>(405f, -439f, -723f, -819f), u_input.d, Struct_1(global0.a, false)), arg_0.zz)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(164f, 391f))))), _wgslsmith_f_op_f32(1889f + _wgslsmith_f_op_f32(floor(-1778f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1385f)), _wgslsmith_f_op_f32(618f - 513f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-580f))))));
    global2 = !select(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, global0.b, arg_3, false), vec4<bool>(false, false, arg_2.b, false), vec4<bool>(true, false, global0.b, true)), vec4<bool>(false, true, true, false)), vec4<bool>(true, all(select(global2.yyx, vec3<bool>(var_0.b, true, true), global2.wwx)), !select(global2.x, arg_0.x, var_0.b), any(vec3<bool>(arg_2.b, var_0.b, global0.b))), u_input.c > u_input.d.x);
    global3 = array<Struct_1, 13>();
    global3 = array<Struct_1, 13>();
    return firstTrailingBit(73974u) ^ u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 34983u;
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~(~4294967295u)), 13u)];
    let var_1 = Struct_1(global0.a, _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.a.x, var_0, var_0), ~var_0, 44413u) > _wgslsmith_add_u32(u_input.b | func_1(vec3<bool>(global2.x, global2.x, false), vec4<i32>(global0.a, 0i, 1i, 13571i), Struct_1(2147483647i, true), global2.x), ~reverseBits(31171u)));
    global1 = ~u_input.d.x;
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0, var_0, func_3(global0.a, var_1.b, -373f, var_1).x << (4457u % 32u), var_0), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a.xz), var_0, 1u, _wgslsmith_clamp_u32(var_0 << (4294967295u % 32u), u_input.b, 0u))), 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-1i));
}

