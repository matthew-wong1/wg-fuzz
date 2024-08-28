struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 19>;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<i32>(27332i, -11138i, -1i, 2147483647i), 0u), Struct_1(vec4<i32>(2147483647i, 0i, 1i, 0i), 4294967295u), Struct_1(vec4<i32>(1i, 18726i, -32269i, 49333i), 39892u), Struct_1(vec4<i32>(0i, -1i, 2147483647i, 38631i), 0u), Struct_1(vec4<i32>(1i, -35011i, i32(-2147483648), -1i), 0u), Struct_1(vec4<i32>(0i, 0i, 37226i, 0i), 37184u), Struct_1(vec4<i32>(16362i, 1i, 1i, -63289i), 0u), Struct_1(vec4<i32>(-1i, 28545i, 2147483647i, -10023i), 0u), Struct_1(vec4<i32>(80667i, 1i, 0i, 19858i), 6952u), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -9986i), 82692u), Struct_1(vec4<i32>(-61723i, i32(-2147483648), i32(-2147483648), 2147483647i), 20947u), Struct_1(vec4<i32>(-39787i, 2147483647i, 2147483647i, 10195i), 22574u), Struct_1(vec4<i32>(-62759i, -20811i, 921i, 55431i), 29880u), Struct_1(vec4<i32>(2147483647i, 43405i, -1i, -20270i), 0u), Struct_1(vec4<i32>(-43775i, 34096i, 2147483647i, -4720i), 0u), Struct_1(vec4<i32>(10396i, 8229i, 0i, 2147483647i), 0u), Struct_1(vec4<i32>(0i, 16670i, 2003i, 1539i), 8130u));

var<private> global4: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(0i, -21112i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    let var_0 = firstTrailingBit(global4[_wgslsmith_index_u32(34871u, 1u)]) ^ reverseBits(select(_wgslsmith_add_vec2_i32(vec2<i32>(-29060i, 24090i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, global0.x), vec2<bool>(false, false)) ^ global4[_wgslsmith_index_u32(arg_1.x, 1u)]);
    global3 = array<Struct_1, 17>();
    var var_1 = arg_1;
    var var_2 = global2[_wgslsmith_index_u32(arg_1.x, 19u)];
    global4 = array<vec2<i32>, 1>();
    return 2147483647i;
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    global2 = array<Struct_2, 19>();
    global0 = -(~_wgslsmith_mod_vec4_i32(-firstLeadingBit(vec4<i32>(1i, u_input.a, -1i, 41864i)), vec4<i32>(-global0.x, 29559i, 34822i, reverseBits(global0.x))));
    let var_0 = any(vec3<bool>(true, all(vec3<bool>(false, false, 22125i < u_input.a)), !all(vec2<bool>(true, false))));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, -10767i, -1i ^ global0.x, ~(-2147483647i)), vec4<i32>(_wgslsmith_div_i32(18146i, arg_1), ~(-19821i), -u_input.a, arg_1) >> (firstTrailingBit(~vec4<u32>(arg_0, 5761u, 4294967295u, 0u)) % vec4<u32>(32u))), arg_0);
    global1 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1964f, 1633f))), -679f)) + -935f));
}

fn func_1() -> Struct_3 {
    global0 = reverseBits(vec4<i32>(_wgslsmith_sub_i32(33558i, 0i), reverseBits(func_2(50661u, vec2<u32>(59653u, 4294967295u)) | global0.x), global0.x, ~(~u_input.a >> (1u % 32u))));
    global4 = array<vec2<i32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(ceil(422f));
    global3 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_f32(func_3(31511u, countOneBits(u_input.a)));
    return Struct_3(Struct_2(all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec2<bool>(false, false)))), all(vec4<bool>(true, true, true, true)) == true), abs(max(3845i, ~u_input.a)), vec3<u32>(max(~0u, ~1u), ~78555u, ~(~31750u)) << (select(abs(select(vec3<u32>(24702u, 1u, 1u), vec3<u32>(22399u, 1u, 80852u), true)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(49389u, 0u, 47506u), vec3<u32>(19055u, 4294967295u, 18510u)), vec3<bool>(true, true, true)) % vec3<u32>(32u)), var_1, Struct_2(all(vec2<bool>(true, true)), true));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_2(arg_2.e.a, _wgslsmith_f_op_f32(-arg_2.d) <= arg_2.d);
    global2 = array<Struct_2, 19>();
    var var_1 = ~arg_2.c.x;
    global4 = array<vec2<i32>, 1>();
    let var_2 = func_1().e;
    return vec2<bool>(var_2.b, arg_2.e.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(_wgslsmith_add_i32((u_input.a & -u_input.a) & u_input.a, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-22795i, u_input.a, u_input.a, global0.x), vec4<i32>(-9382i, -27874i, global0.x, u_input.a)), -vec4<i32>(2147483647i, u_input.a, u_input.a, 22580i))), -firstLeadingBit(_wgslsmith_add_i32(~(-28683i), firstTrailingBit(-1i))), ~global0.x, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, global0.x, -4959i), global0.zwx) << (~vec3<u32>(21918u, 0u, 9836u) % vec3<u32>(32u)), global0.wxy));
    var var_0 = Struct_3(Struct_2(true, true), u_input.a, ~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(54628u, 13137u, 91444u), vec3<u32>(61498u, 71874u, 0u), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1347f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-501f, -910f)))), Struct_2(false, any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))));
    global4 = array<vec2<i32>, 1>();
    var var_1 = true;
    var_1 = var_0.a.a;
    var var_2 = Struct_2(any(func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(887f, 144f), vec2<f32>(var_0.d, var_0.d)))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 14086u, var_0.c.x), vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)) ^ 1u, 17u)], func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(844f, 891f), vec2<f32>(-349f, 414f), vec2<bool>(false, var_0.a.a)))))), all(select(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0.a.b, false), var_0.e.b), vec3<bool>(var_0.a.a & false, var_0.e.a, var_0.e.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-48596i, -2147483647i, -1i, u_input.a), vec4<i32>(0i, -1i, 30343i, global0.x)) == 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.c.x, var_0.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1814f, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-100f * -351f), _wgslsmith_f_op_f32(-238f + var_0.d))), _wgslsmith_f_op_f32(floor(var_0.d)))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(var_0.c.yx), var_0.c.zx), _wgslsmith_clamp_u32(~47736u, var_0.c.x, var_0.c.x)), var_0.c.x), ~(~var_0.b >> (~1u % 32u)) ^ _wgslsmith_sub_i32(_wgslsmith_div_i32(firstLeadingBit(u_input.a), 1i), u_input.a), vec2<u32>(func_1().c.x, ~var_0.c.x));
}

