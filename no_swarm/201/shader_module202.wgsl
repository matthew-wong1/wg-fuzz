struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<bool, 1>;

var<private> global2: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec3_u32(global2.b.zxw, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a));
    let var_1 = false;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)), _wgslsmith_f_op_f32(min(368f, arg_0.a.a.x)));
    var var_3 = arg_0.b;
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-993f - 347f), arg_0.a.a.x))), i32(-1i) * -30263i);
    return arg_0.a.a;
}

fn func_3(arg_0: Struct_1) -> Struct_3 {
    global0 = array<vec2<bool>, 8>();
    var var_0 = -131f;
    global1 = array<bool, 1>();
    var var_1 = Struct_4(4294967295u, ~firstTrailingBit(global2.b ^ global2.b));
    return Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.c.x, -294f)), _wgslsmith_f_op_f32(arg_0.c.x - -275f))), 175f), -37490i), ~(~vec3<u32>(global2.a, var_1.a, 79078u) << (_wgslsmith_clamp_vec3_u32(var_1.b.xxz, vec3<u32>(57142u, var_1.a, 10945u), u_input.a) % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u)), arg_0.a);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = Struct_5(firstTrailingBit(global2.b.x), func_3(Struct_1(vec3<bool>(func_3(Struct_1(arg_0.c, u_input.d, arg_0.a.a)).c.x, all(vec3<bool>(false, false, true)), arg_0.c.x), vec3<i32>(func_3(Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(5630u, 1u)], global1[_wgslsmith_index_u32(114657u, 1u)]), vec3<i32>(-28939i, arg_0.a.b, -2147483647i), vec2<f32>(arg_0.a.a.x, 550f))).a.b, countOneBits(arg_0.a.b), ~(-18850i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.a.x, -464f), arg_0.a.a)))).a);
    global1 = array<bool, 1>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, _wgslsmith_f_op_vec2_f32(func_2(Struct_3(func_3(Struct_1(vec3<bool>(true, arg_0.c.x, true), u_input.d, vec2<f32>(-1051f, arg_0.a.a.x))).a, reverseBits(u_input.a), arg_0.c), Struct_1(vec3<bool>(true, arg_0.c.x, true), u_input.d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a.a.x, -502f), var_0.b.a))))).x));
    global0 = array<vec2<bool>, 8>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(func_3(Struct_1(arg_0.c, u_input.d, vec2<f32>(arg_0.a.a.x, var_1))), Struct_1(vec3<bool>(arg_0.c.x, true, true), u_input.d, vec2<f32>(2255f, 117f)))).x), 255f), -506f, _wgslsmith_f_op_f32(step(-343f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) * _wgslsmith_f_op_f32(var_0.b.a.x + -1000f)))))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(max(vec4<i32>(max(-1i, u_input.b.x), ~u_input.b.x, u_input.b.x, -1i ^ u_input.d.x), max(vec4<i32>(-1i, u_input.d.x, 20495i, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 50937i)) << (~global2.b % vec4<u32>(32u))) ^ vec4<i32>(-(-36703i >> (global2.b.x % 32u)), ~u_input.d.x, u_input.d.x, u_input.d.x));
    let var_1 = func_4(func_3(Struct_1(vec3<bool>(u_input.a.x != 29707u, true, global1[_wgslsmith_index_u32(0u, 1u)] != false), u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(Struct_2(vec2<f32>(1000f, -1456f), var_0.x), global2.b.xzz, vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 1u)])), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(global2.b.x, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.e, 1u)]), var_0.zyx, vec2<f32>(-590f, -247f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -465f), vec2<f32>(487f, 903f), global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.x, var_1.a.a.x))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.a.a.x) * var_1.a.a))), ~max(-6816i, -36323i) ^ u_input.b.x);
    let var_3 = vec4<bool>(func_3(Struct_1(select(var_1.c, vec3<bool>(var_1.c.x, true, var_1.c.x), var_1.c), -var_0.xyx, _wgslsmith_div_vec2_f32(vec2<f32>(-761f, 1485f), var_2.a))).c.x, true, true, global1[_wgslsmith_index_u32(0u, 1u)]);
    var var_4 = -204f;
    return Struct_1(func_3(Struct_1(var_1.c, ~var_0.yxz, vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(floor(-1221f))))).c, _wgslsmith_sub_vec3_i32(var_0.zxz, reverseBits(var_0.yyw)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, -151f) - var_1.a.a)) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(floor(var_2.a.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 8>();
    var var_0 = func_1();
    global0 = array<vec2<bool>, 8>();
    let var_1 = -12227i;
    global2 = Struct_4(17082u, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(reverseBits(1i), _wgslsmith_mult_i32(i32(-1i) * -29317i, ~u_input.b.x))), func_4(Struct_3(func_3(func_1()).a, func_3(Struct_1(var_0.a, u_input.d, var_0.c)).b, vec3<bool>(true, false && var_0.a.x, false && var_0.a.x))).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.x, -469f, true)) - _wgslsmith_f_op_f32(-var_0.c.x)))), vec2<i32>(func_1().b.x, func_3(func_1()).a.b), -2147483647i);
}

