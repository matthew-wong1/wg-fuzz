struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<u32>(0u, 68470u), false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    let var_0 = vec4<u32>(abs(~u_input.b.x), abs(~arg_1.x), ~u_input.b.x >> (37426u % 32u), max(24813u, firstTrailingBit(max(4294967295u, u_input.a.x)) & 1u));
    let var_1 = _wgslsmith_f_op_f32(ceil(-270f));
    global2 = 55527i;
    var var_2 = 4294967295u & ~(~u_input.b.x);
    let var_3 = ~_wgslsmith_mod_i32(-_wgslsmith_mult_i32(~14929i, 1i), _wgslsmith_clamp_i32(min(select(-2147483647i, 0i, false), -1i), _wgslsmith_mult_i32(~1i, 58369i), i32(-1i) * -2147483647i));
    return arg_2.a;
}

fn func_3() -> vec2<bool> {
    let var_0 = global3[_wgslsmith_index_u32(~u_input.b.x, 1u)];
    var var_1 = _wgslsmith_f_op_f32(floor(-1016f));
    let var_2 = _wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(31027i, 66690i, 0i), _wgslsmith_mod_i32(9599i, -15422i))), vec2<i32>(_wgslsmith_mult_i32(abs(60935i), 1i), -(select(1i, -2147483647i, var_0.b) << (u_input.a.x % 32u))));
    global3 = array<Struct_2, 1>();
    global2 = ~max(firstLeadingBit(~(~1i)), ~_wgslsmith_sub_i32(var_2.x, var_2.x));
    return select(vec2<bool>(!all(vec4<bool>(false, var_0.b, false, var_0.b)), all(!select(vec3<bool>(true, false, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), var_0.b))), select(vec2<bool>(any(vec4<bool>(false, var_0.b, var_0.b, var_0.b)), true), select(vec2<bool>(any(vec3<bool>(true, false, var_0.b)), var_0.b), !select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), var_0.b), select(vec2<bool>(false, false), vec2<bool>(true, false), false), !vec2<bool>(true, var_0.b))), vec2<bool>(var_0.b, any(vec2<bool>(var_0.b, false)))), any(select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), var_0.b), vec2<bool>(true, true), select(!vec2<bool>(var_0.b, true), select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, true), true), !vec2<bool>(true, var_0.b)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(func_2(arg_1, u_input.a.xz, arg_0), select(arg_0.b, arg_0.b, arg_0.a));
    let var_1 = select(func_3(), vec2<bool>(arg_0.a, var_0.a), vec2<bool>(select(true, all(func_3()), arg_0.a), (true & func_3().x) | any(arg_0.b.wy)));
    let var_2 = Struct_2(select(u_input.a.xx, countOneBits(~(vec2<u32>(u_input.b.x, u_input.b.x) << (u_input.b.zx % vec2<u32>(32u)))), any(select(vec3<bool>(var_1.x, var_1.x, arg_0.a), !vec3<bool>(true, var_0.a, true), var_0.a))), true);
    var_0 = global1[_wgslsmith_index_u32(0u, 1u)];
    global2 = abs(reverseBits(-2147483647i));
    return select(!vec4<bool>(var_0.b.x, func_2(_wgslsmith_f_op_vec3_f32(-arg_1), ~vec2<u32>(u_input.a.x, u_input.a.x), arg_0), 1f <= _wgslsmith_f_op_f32(-arg_1.x), false), select(select(vec4<bool>(true, var_1.x, true, !arg_0.a), select(vec4<bool>(var_2.b, var_2.b, var_2.b, var_1.x), var_0.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(u_input.b.x, 2468u)), 16u)]), select(global0[_wgslsmith_index_u32(var_2.a.x, 16u)], !var_0.b, select(arg_0.b, vec4<bool>(var_0.a, var_1.x, true, var_0.b.x), var_1.x))), !vec4<bool>(arg_0.b.x, true, var_1.x, arg_0.a), global0[_wgslsmith_index_u32(var_2.a.x, 16u)]), select(vec4<bool>(true, arg_0.a, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 786f, arg_1.x) - vec3<f32>(arg_1.x, 404f, arg_1.x)), vec2<u32>(0u, var_2.a.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.a, vec2<u32>(var_2.a.x, 1u)), 1u)]), false), var_0.b, _wgslsmith_f_op_f32(-arg_1.x) != arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    let var_0 = -firstTrailingBit(~vec2<i32>(1i, 1i) >> (~(vec2<u32>(u_input.b.x, u_input.a.x) >> (vec2<u32>(36526u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = Struct_1((i32(-1i) * -11816i) <= _wgslsmith_div_i32(_wgslsmith_mult_i32(185i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 18315i, 1i), vec4<i32>(var_0.x, 1i, var_0.x, -2615i))), ~(2147483647i >> (u_input.a.x % 32u))), !(!func_1(global1[_wgslsmith_index_u32(4294967295u, 1u)], vec3<f32>(-401f, 567f, -1003f))));
    global3 = array<Struct_2, 1>();
    let var_2 = global3[_wgslsmith_index_u32(11956u, 1u)];
    global2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(19855u, u_input.b.x), 1u >> (var_2.a.x % 32u)), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_2.a.x, u_input.a.x, u_input.b.x) | u_input.a)), _wgslsmith_mult_u32(~(~0u), var_2.a.x), var_2.a.x, 7196u), var_2.a.x, -483f, var_0.x);
}

