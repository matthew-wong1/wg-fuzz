struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: array<u32, 18>;

var<private> global2: bool = true;

var<private> global3: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-19449i, 0i, -25440i), vec3<i32>(6448i, 1i, -52939i), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(-19553i, 1i, i32(-2147483648)), vec3<i32>(-1i, -1i, -1423i), vec3<i32>(6578i, -26712i, -15727i), vec3<i32>(4478i, i32(-2147483648), -7881i), vec3<i32>(-1i, -3377i, 2147483647i), vec3<i32>(1i, -1i, 23387i), vec3<i32>(46722i, -43595i, 1i), vec3<i32>(19412i, -16840i, 12356i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-75448i, -1i, -1i), vec3<i32>(16910i, -1554i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(-1i, 29656i, -13103i), vec3<i32>(-14290i, -716i, -1i), vec3<i32>(2147483647i, -16391i, 0i), vec3<i32>(-1i, 15035i, 18885i), vec3<i32>(22932i, -62054i, -9704i), vec3<i32>(-1960i, i32(-2147483648), -16888i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(2147483647i, -1i, 35964i), vec3<i32>(-10608i, -23038i, -39690i), vec3<i32>(33226i, 2147483647i, 1i), vec3<i32>(2147483647i, 88330i, 46643i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<f32>) -> vec2<i32> {
    global2 = true;
    let var_0 = select(vec2<bool>(!(arg_0 > _wgslsmith_f_op_f32(ceil(-1021f))), false), vec2<bool>(false, true), _wgslsmith_f_op_f32(748f + arg_0) < _wgslsmith_f_op_f32(trunc(arg_0)));
    global3 = array<vec3<i32>, 26>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-397f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + arg_2.x))), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-521f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(max(arg_0, arg_2.x)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, 1001f, -1760f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -1140f, -899f) - vec4<f32>(1224f, arg_2.x, arg_2.x, -1208f))))))));
    return abs(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a)), -vec2<i32>(-6704i, arg_1) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 50480u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 28235u)) % vec2<u32>(32u))) | vec2<i32>(u_input.a, arg_1));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global1 = array<u32, 18>();
    global3 = array<vec3<i32>, 26>();
    var var_0 = Struct_3(Struct_1(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), vec2<bool>(true, false)), -func_3(1153f, u_input.a >> (0u % 32u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1178f, -892f), vec2<f32>(-1000f, -1000f)))), all(vec3<bool>(true, true, true)) == true), min(~vec2<u32>(~38261u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(979u, 18u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 120u), vec4<u32>(38294u, global1[_wgslsmith_index_u32(arg_0, 18u)], 112718u, 0u))), vec2<u32>(arg_0, 1u)));
    global3 = array<vec3<i32>, 26>();
    let var_1 = func_3(_wgslsmith_f_op_f32(f32(-1f) * -596f), -abs(_wgslsmith_div_i32(var_0.a.b.x, u_input.a ^ var_0.a.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2007f, 1680f)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-178f, -1073f))))).x;
    return var_0.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(select(!arg_1.a, arg_2.a, !(!vec2<bool>(arg_2.c, arg_1.c))), _wgslsmith_add_vec2_i32(vec2<i32>(4482i, u_input.a), -(~vec2<i32>(19789i, arg_3.x))), false), ~func_2(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 1u), 18u)]));
    global0 = array<vec3<u32>, 9>();
    global1 = array<u32, 18>();
    var var_1 = arg_3.xwx;
    var var_2 = abs(25290u);
    return select(vec4<bool>(all(!select(vec3<bool>(true, true, var_0.a.c), vec3<bool>(false, false, false), vec3<bool>(true, arg_0.c, arg_1.c))), !(_wgslsmith_f_op_f32(round(-702f)) > _wgslsmith_f_op_f32(-1420f * 924f)), true, any(!select(vec4<bool>(arg_2.c, false, arg_2.a.x, false), vec4<bool>(arg_2.c, arg_0.c, arg_1.c, true), vec4<bool>(false, true, false, false)))), vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -448f) <= _wgslsmith_f_op_f32(floor(-734f))), any(select(vec3<bool>(false, arg_0.c, true), select(vec3<bool>(false, arg_1.a.x, arg_0.c), vec3<bool>(false, var_0.a.c, arg_1.a.x), vec3<bool>(arg_0.c, arg_1.c, arg_0.c)), vec3<bool>(true, arg_0.c, var_0.a.a.x))), true, any(arg_1.a)), arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 26>();
    let var_0 = vec2<u32>(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13127u, 18u)], 9u)], global0[_wgslsmith_index_u32(17342u, 9u)]), 18u)], _wgslsmith_sub_u32(~0u, abs(16351u))) >> (min(62026u ^ ~global1[_wgslsmith_index_u32(4294967295u, 18u)], 1u) % 32u), 18u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1u, 18u)]) ^ ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32798u, 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), 18u)], global1[_wgslsmith_index_u32(~(~abs(0u)), 18u)], 4294967295u));
    global1 = array<u32, 18>();
    global2 = !(!(_wgslsmith_div_i32(u_input.a, u_input.a) < (26820i ^ u_input.a)) != true);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1244f))), -916f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f))))));
    var var_2 = abs(var_0.x);
    global2 = any(func_1(Struct_1(vec2<bool>(true, select(true, false, false)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 43859i), vec2<i32>(12551i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), true), Struct_1(vec2<bool>(true, u_input.a == u_input.a), vec2<i32>(-1i) * -vec2<i32>(-23493i, u_input.a), true), Struct_1(vec2<bool>(any(vec3<bool>(false, false, false)), true), ~max(vec2<i32>(37031i, -23438i), vec2<i32>(u_input.a, u_input.a)), true), -(vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 0i, -26089i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)))));
    let var_3 = u_input.a >> (0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2535f, -1441f) + var_1.yx)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_1.x, true)) - var_1.x) - _wgslsmith_f_op_f32(sign(var_1.x))), _wgslsmith_f_op_f32(-var_1.x)), var_0.x, -countOneBits(7216i), firstTrailingBit(countOneBits(vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(-1i, 6969i)))));
}

