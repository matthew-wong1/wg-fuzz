struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 5>;

var<private> global2: Struct_2;

var<private> global3: f32 = -529f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    global2 = Struct_2(abs(abs(vec3<i32>(u_input.b.x, u_input.d, -1i))) & vec3<i32>(-33483i, _wgslsmith_sub_i32(select(0i, u_input.e, true), global2.a.x), -12269i), -653f, ~global2.c & 132852u);
    return Struct_2(-global2.a, _wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(ceil(arg_1))), max(abs(global2.c), ~11161u) << (48395u % 32u));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = max(~global2.a.zy, u_input.b) ^ countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-47398i, u_input.b.x), u_input.b & global2.a.xy, vec2<i32>(1i, u_input.d)), vec2<i32>(global2.a.x, u_input.d)));
    var var_1 = global2.c;
    var var_2 = _wgslsmith_add_i32(-1i, 0i ^ ~(~u_input.b.x));
    var var_3 = select(vec2<u32>(4294967295u, ~max(59118u, global2.c)) & (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(31685u, global2.c), vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(1u, 4294967295u)) >> (countOneBits(vec2<u32>(global2.c, 43499u) >> (vec2<u32>(13011u, global2.c) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(global2.c, 0u), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    let var_4 = ((_wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, 87940i), -6286i) <= var_0.x) || true) && all(vec4<bool>(all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), !any(vec4<bool>(false, true, true, false)), true));
    return !(!select(vec2<bool>(false, true), !select(vec2<bool>(var_4, false), vec2<bool>(true, false), vec2<bool>(true, var_4)), var_4));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global1 = array<vec4<i32>, 5>();
    let var_0 = arg_2;
    global1 = array<vec4<i32>, 5>();
    var var_1 = Struct_2(vec3<i32>(u_input.d, i32(-1i) * -global2.a.x, _wgslsmith_add_i32(~arg_3.a.x, countOneBits(_wgslsmith_div_i32(arg_3.a.x, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), -641f)), 1943f))), 1u ^ abs(global2.c & _wgslsmith_mod_u32(arg_3.c, arg_3.c)));
    var var_2 = func_2(-32438i, global2.b);
    return _wgslsmith_div_f32(global2.b, 702f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3.b, -2763f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(abs(arg_3.b)))))));
    let var_1 = func_2(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-249f)), _wgslsmith_div_f32(var_0.x, 433f))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b)), -340f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0, select(_wgslsmith_div_vec2_u32(arg_1.xy, arg_1.zx), vec2<u32>(arg_2, 25777u), func_3(-1000f)), Struct_1(abs(vec4<u32>(4294967295u, 0u, global2.c, arg_2))), Struct_2(-arg_3.a, _wgslsmith_f_op_f32(global2.b + arg_3.b), global2.c))) - -722f), func_2(-_wgslsmith_dot_vec2_i32(arg_3.a.yx, vec2<i32>(30831i, -21517i)) << (4294967295u % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 1000f)))))).b);
    global1 = array<vec4<i32>, 5>();
    var var_3 = Struct_2(var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(var_1.b)))), min(0u, ~0u));
    return select(arg_0.x, (7404i & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1810i, -13719i), abs(var_1.a))) | var_3.a.x, all(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(-u_input.d, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(8742i, 1i), _wgslsmith_clamp_i32(u_input.c, 0i, global2.a.x))), global2.a.x, 25970i), -1106f, abs(10016u));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(26520i), -var_1.a.x, ~func_1(var_1.a.yy, vec3<u32>(32943u, global2.c, global2.c), 27573u, Struct_2(var_1.a, var_1.b, 1u)), -select(var_1.a.x, 1i, false)), global1[_wgslsmith_index_u32(~var_1.c, 5u)] ^ vec4<i32>(-64667i << (var_1.c % 32u), 3274i, ~16176i, abs(22585i))), abs(global1[_wgslsmith_index_u32((~40744u << ((6445u & var_1.c) % 32u)) | global2.c, 5u)]));
    let var_3 = var_1;
    global2 = func_2(var_2.x >> (~select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30220u, var_1.c), vec3<u32>(global2.c, 0u, var_1.c)), var_3.c << (var_1.c % 32u), true) % 32u), global2.b);
    var var_4 = Struct_1(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(27520u), var_1.c, var_1.c, _wgslsmith_add_u32(var_1.c, var_1.c)), ~(vec4<u32>(global2.c, var_1.c, 4294967295u, 29530u) << (vec4<u32>(4294967295u, 0u, var_3.c, var_1.c) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(86074u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 0u, 76754u, var_3.c), vec4<u32>(34173u, var_3.c, 1u, var_3.c)), _wgslsmith_sub_u32(1u, 0u), var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_mod_vec4_u32(firstLeadingBit(var_4.a), var_4.a ^ vec4<u32>(var_4.a.x, 42947u, var_1.c, var_4.a.x))), _wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(global2.b * var_1.b)), ~4595u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-354f - 359f) + _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(sign(1214f)), -2078f), vec2<u32>(~var_4.a.x, 0u), Struct_1(~vec4<u32>(1u, 23560u, 0u, 18675u)), var_1))), _wgslsmith_f_op_f32(f32(-1f) * -336f));
}

