struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 17>;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 17>;

var<private> global4: vec3<i32> = vec3<i32>(34204i, 77145i, -1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    global4 = countOneBits(~vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0, 2147483647i), _wgslsmith_clamp_i32(u_input.c, 2147483647i, 2147483647i)), ~(u_input.c & global4.x), arg_0));
    let var_0 = arg_1;
    var var_1 = 37232i;
    global4 = firstTrailingBit(~(vec3<i32>(global4.x, 46111i, 2147483647i) & _wgslsmith_add_vec3_i32(vec3<i32>(-14664i, global4.x, arg_0), vec3<i32>(arg_0, 0i, u_input.c)))) << (vec3<u32>(9946u, arg_2.x, _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(33530u, u_input.b.x, var_0.c.x), vec3<u32>(41422u, u_input.b.x, 4294967295u)), vec3<u32>(arg_1.c.x, 57754u, arg_1.d.a)))) % vec3<u32>(32u));
    global0 = true;
    return arg_1.e.e;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.ww, ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.x, 32097u), vec2<u32>(420u, u_input.a.x)) & ~(vec2<u32>(u_input.e, 4294967295u) << (arg_3.yw % vec2<u32>(32u)))), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(679f, _wgslsmith_f_op_f32(abs(arg_1))))), vec2<u32>(_wgslsmith_add_u32(1u, 0u & arg_0), ~select(arg_2.x, 8107u, false)) << (_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(arg_3.x, arg_3.x)), u_input.b) % vec2<u32>(32u)), Struct_1(~_wgslsmith_mult_u32(firstTrailingBit(1u), 57692u), -1052f, func_3(abs(u_input.c) << (arg_3.x % 32u), Struct_2(global3[_wgslsmith_index_u32(arg_2.x, 17u)], 1259f, vec2<u32>(1u, 4294967295u), global3[_wgslsmith_index_u32(~1u, 17u)], global3[_wgslsmith_index_u32(firstLeadingBit(1u), 17u)]), vec2<u32>(~arg_2.x, ~arg_0)), abs(arg_2), true), Struct_1(~arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -1000f), (22559u >> (~4294967295u % 32u)) < _wgslsmith_sub_u32(35275u, ~arg_2.x), arg_3, !(_wgslsmith_f_op_f32(trunc(arg_1)) <= _wgslsmith_div_f32(arg_1, 1993f))));
    global4 = vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(select(1i, u_input.c, var_0.d.e), 1i, ~(-2432i)), vec3<i32>(global4.x, ~u_input.c, -49057i)), _wgslsmith_clamp_i32(global4.x, u_input.c, global4.x), reverseBits(~_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, u_input.c), -17213i)));
    var var_1 = vec2<u32>(reverseBits(arg_0), arg_0);
    var var_2 = ~((u_input.e ^ (_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(1u, arg_3.x)) & ~639u)) << (arg_2.x % 32u));
    var_2 = firstLeadingBit(arg_2.x);
    return _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(global4.x, 2147483647i, global4.x, -2147483647i), vec4<i32>(0i, 2147483647i, -1i, global4.x)), vec4<i32>(-2147483647i, u_input.c, 2147483647i, -15388i)), vec4<i32>(-1i) * -vec4<i32>(global4.x, global4.x, global4.x, -65002i)), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-16135i), _wgslsmith_add_i32(global4.x, -1i), -2147483647i, 2147483647i), _wgslsmith_mod_vec4_i32(-vec4<i32>(-9670i, u_input.c, global4.x, 32713i), ~vec4<i32>(u_input.c, -22826i, 1i, 12459i)))), _wgslsmith_mult_i32(u_input.c, 0i));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_mod_u32(abs(_wgslsmith_mult_u32(1u, ~_wgslsmith_sub_u32(u_input.b.x, 0u))), min(1u, countOneBits(abs(_wgslsmith_add_u32(19838u, u_input.e)))));
    var var_1 = min(vec3<i32>(~func_2(~4294967295u, 2063f, vec4<u32>(4294967295u, u_input.d, u_input.b.x, u_input.d), vec4<u32>(u_input.a.x, 45136u, u_input.a.x, u_input.d)), ~global4.x, -2147483647i), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, global4.x, u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global4.x, -26744i, u_input.c), vec4<i32>(global4.x, global4.x, -17479i, u_input.c))), -abs(u_input.c), _wgslsmith_dot_vec4_i32(~vec4<i32>(-13626i, 0i, -1i, -2147483647i), min(vec4<i32>(global4.x, 46424i, global4.x, 14914i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))) << (14549u % 32u)));
    var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(global4.x, u_input.c)), ~reverseBits(max(global4.zz, global4.yy))), min(49341i, -21659i), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(-29775i, global4.x), _wgslsmith_sub_i32(var_1.x, global4.x))));
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 17u)]);
    var var_3 = Struct_3(Struct_2(Struct_1(4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(561f, 940f)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(24639u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])), true, _wgslsmith_div_vec4_u32(vec4<u32>(47367u, 1u, u_input.d, u_input.b.x) >> (vec4<u32>(u_input.e, 0u, u_input.d, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.d, 1u, u_input.b.x, u_input.a.x)), false || all(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(327f)), -219f)), ~vec2<u32>(~u_input.d, u_input.b.x), Struct_1(max(~u_input.a.x, 9234u), _wgslsmith_f_op_f32(-1813f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 17u)])), true, vec4<u32>(~0u, select(72190u, u_input.b.x, true), u_input.d, u_input.d), func_3(-1i, Struct_2(global3[_wgslsmith_index_u32(u_input.e, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)], vec2<u32>(1u, u_input.b.x), global3[_wgslsmith_index_u32(u_input.a.x, 17u)], Struct_1(4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], true, vec4<u32>(u_input.a.x, u_input.d, 50696u, 1u), true)), min(u_input.a.zy, vec2<u32>(69550u, u_input.d)))), Struct_1(~(~u_input.d), global1[_wgslsmith_index_u32(0u, 17u)], true, vec4<u32>(u_input.b.x, 42555u, 0u, u_input.a.x) & ~vec4<u32>(0u, u_input.a.x, 0u, 27367u), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-695f, global1[_wgslsmith_index_u32(1u, 17u)]))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1776f, global1[_wgslsmith_index_u32(30012u, 17u)]), vec2<f32>(-875f, global1[_wgslsmith_index_u32(0u, 17u)]), vec2<bool>(true, true))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.d, 17u)]))))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec2<bool>(true, true)))), ~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, var_1.x, u_input.c, global4.x), vec4<i32>(-31319i, u_input.c, global4.x, 2147483647i)) | ~vec4<i32>(0i, -41031i, global4.x, 42438i), min(_wgslsmith_mult_vec4_i32(vec4<i32>(-2682i, global4.x, -53120i, 51106i), vec4<i32>(global4.x, global4.x, 2147483647i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-37076i, global4.x, u_input.c, 45053i), vec4<i32>(u_input.c, global4.x, u_input.c, var_1.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-489f * global1[_wgslsmith_index_u32(u_input.b.x, 17u)]) + var_3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-global4.x, 1i, abs(-2147483647i), u_input.c);
    global2 = !(false || select(true, !any(vec3<bool>(true, true, false)), true));
    let var_1 = Struct_1(1u, global1[_wgslsmith_index_u32((0u | (select(u_input.e, u_input.b.x, false) << (~1u % 32u))) | _wgslsmith_add_u32(u_input.e, u_input.b.x), 17u)], false, ~abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(sign(2718f)) != _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 17u)] - _wgslsmith_f_op_f32(f32(-1f) * -1288f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-443f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + 1039f) - _wgslsmith_f_op_f32(f32(-1f) * -361f)))))));
    let var_3 = -(~(-var_0.x << (80146u % 32u)) ^ (_wgslsmith_div_i32(1i, var_0.x) & (i32(-1i) * -30259i)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(148f)) + _wgslsmith_f_op_f32(min(301f, var_2)))), _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(u_input.a.x, 74805u), 1u, max(countOneBits(4294967295u), _wgslsmith_div_u32(65281u, u_input.e)), ~32936u), _wgslsmith_mod_vec4_u32(var_1.d, ~var_1.d), vec4<u32>(4294967295u, u_input.a.x, u_input.d, reverseBits(33293u) ^ ~var_1.a)), 24575u, abs(var_0.x));
}

