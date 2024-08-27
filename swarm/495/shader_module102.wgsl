struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec4<i32>(1i, 31402i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 45256i), ~vec2<i32>(2147483647i, -46738i), u_input.a.x < 0u), vec2<i32>(_wgslsmith_add_i32(40591i, 4584i), -45470i)), -61342i), Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i << (u_input.b.x % 32u), 16526i), 1i | _wgslsmith_clamp_i32(2147483647i, 1i, -12784i)), -1137f));
    let var_1 = Struct_2(Struct_1(abs(var_0.b.x & -14883i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-346f * 1380f), global0[_wgslsmith_index_u32(0u, 1u)]))), vec4<i32>(var_0.a.a, -2147483647i, abs(var_0.b.x), i32(-1i) * -1i), var_0.a);
    var var_2 = select(vec3<bool>(arg_1.x, any(vec3<bool>(any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x, global0[_wgslsmith_index_u32(28017u, 1u)] <= 711f)), arg_1.x), vec3<bool>(!(var_1.a.b <= _wgslsmith_f_op_f32(max(-1811f, 417f))), all(!select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, arg_1.x, true))), arg_1.x), select(!vec3<bool>(false, 4294967295u > u_input.b.x, !arg_1.x), select(select(select(vec3<bool>(true, arg_1.x, false), vec3<bool>(true, arg_1.x, arg_1.x), false), vec3<bool>(true, arg_1.x, arg_1.x), true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), true));
    var var_3 = var_1.c;
    var_2 = vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - -942f)) <= -816f, arg_1.x);
    return vec3<u32>(7094u, select(_wgslsmith_mult_u32(~u_input.b.x, u_input.a.x), _wgslsmith_mod_u32(u_input.b.x, 17636u) << (_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(64778u, 22372u)) % 32u), false), 4294967295u) << (vec3<u32>(u_input.b.x, _wgslsmith_div_u32(~u_input.b.x, u_input.a.x), ~u_input.a.x) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec3<u32> {
    return _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(~func_3(global0[_wgslsmith_index_u32(36719u, 1u)], vec2<bool>(false, true)), u_input.a << ((vec3<u32>(u_input.b.x, arg_1.x, arg_1.x) >> (arg_1 % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~vec3<u32>(abs(arg_1.x), ~arg_1.x, 32819u)));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -28611i, i32(-1i) * -27512i, 5091i), vec3<i32>(1i, 1i, 6453i)), _wgslsmith_mult_vec3_i32(reverseBits(abs(vec3<i32>(1i, -2147483647i, 0i))), -vec3<i32>(-32780i, 22044i, 35759i) << (func_2(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1000f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), vec2<i32>(48793i, 2611i)) % vec3<u32>(32u))));
    var var_1 = Struct_1(reverseBits(var_0.x), global0[_wgslsmith_index_u32(~u_input.b.x, 1u)]);
    let var_2 = Struct_3(firstTrailingBit(~min(u_input.b.x, ~u_input.a.x)));
    let var_3 = _wgslsmith_mod_vec2_i32(abs(select(~var_0.zy, var_0.yx, !select(vec2<bool>(false, true), vec2<bool>(true, false), false))), _wgslsmith_mod_vec2_i32(var_0.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(-44924i, _wgslsmith_dot_vec4_i32(vec4<i32>(27932i, var_1.a, var_1.a, var_1.a), vec4<i32>(var_0.x, var_1.a, var_1.a, -1i))), -countOneBits(var_0.xy))));
    let var_4 = vec4<f32>(-739f, 677f, -185f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(var_1.b + var_1.b))))));
    return StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * 2530f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_0 = Struct_3(u_input.a.x << (_wgslsmith_div_u32(_wgslsmith_mult_u32(~1u, firstTrailingBit(u_input.a.x)), firstTrailingBit(~33617u)) % 32u));
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_1 = abs(~(~vec2<u32>(12597u, var_0.a)));
    let x = u_input.a;
    s_output = func_1();
}

