struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: bool = false;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 42146u, 44418u);

var<private> global3: array<vec3<u32>, 13>;

var<private> global4: vec2<i32> = vec2<i32>(31189i, 25853i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global2 = firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, max(_wgslsmith_clamp_u32(u_input.b.x, 39003u, u_input.b.x), global2.x))), 13u)]);
    var var_0 = global0[_wgslsmith_index_u32(abs(~0u), 2u)];
    let var_1 = arg_0.x;
    let var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 2u)];
    return 18433u;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<u32> {
    var var_0 = arg_1.b;
    let var_1 = _wgslsmith_dot_vec3_u32(arg_1.a.zwy, abs(countOneBits(firstTrailingBit(_wgslsmith_mult_vec3_u32(arg_1.a.xwx, vec3<u32>(0u, arg_3, arg_3))))));
    global1 = false;
    let var_2 = false;
    var var_3 = global0[_wgslsmith_index_u32(global2.x, 2u)];
    return _wgslsmith_add_vec4_u32(vec4<u32>(28235u, 1u << (_wgslsmith_div_u32(max(var_1, 16756u), func_2(vec4<bool>(false, var_2, true, true))) % 32u), _wgslsmith_div_u32(func_2(vec4<bool>(var_2, false, false, true)), arg_1.a.x ^ 4294967295u) << ((118006u >> ((arg_2 & 20537u) % 32u)) % 32u), u_input.b.x), arg_1.a);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = 5992u;
    let var_2 = Struct_1(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0.b)), var_0.b), _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, 2147483647i, arg_2, -61981i), -vec4<i32>(1i, -1i, var_0.c, 37190i)), -u_input.a.x));
    var var_3 = 4294967295u;
    var var_4 = arg_0;
    return select(max(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 30905u), 37477u), 4294967295u, var_1), max(~arg_0.a.xyx, _wgslsmith_clamp_vec3_u32(global3[_wgslsmith_index_u32(var_1, 13u)], var_0.a.zwy, vec3<u32>(var_1, 32474u, var_1))) ^ vec3<u32>(arg_0.a.x, reverseBits(16102u), var_1)), vec3<u32>(1u, 1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_4.a.x, 4294967295u, arg_1, var_0.a.x)), _wgslsmith_mult_vec4_u32(arg_0.a, var_2.a)))), !(!vec3<bool>(true, u_input.b.x >= var_1, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(54874u, global2.x), 0u & global2.x), _wgslsmith_div_u32(_wgslsmith_div_u32(96426u, u_input.b.x), ~4294967295u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x), 1u), max(select(func_1(vec4<i32>(global4.x, u_input.a.x, u_input.a.x, 0i), Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), -1563f, u_input.a.x), u_input.b.x, 84960u), vec4<u32>(u_input.b.x, global2.x, 0u, 0u), false), ~vec4<u32>(84648u, 14838u, 0u, global2.x)), true | all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, ~1u, _wgslsmith_div_u32(1u, countOneBits(34373u)), ~(~1u)), vec4<u32>(49676u, 1u, u_input.b.x, global2.x))), 2u)];
    global2 = ~vec3<u32>(min(~global2.x, _wgslsmith_dot_vec2_u32(var_0.a.zz, vec2<u32>(0u, global2.x))), u_input.b.x & ~global2.x, ~u_input.b.x) | ~func_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(8289u, global2.x) << (global2.x % 32u), 2u)], 4294967295u, _wgslsmith_mult_i32(global4.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

