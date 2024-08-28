struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(443f, 223f, -488f, 104f), vec4<f32>(2103f, 991f, 286f, 322f), vec4<f32>(1811f, 315f, -1335f, 1000f), vec4<f32>(1609f, 1103f, 1937f, 285f), vec4<f32>(228f, -3096f, 504f, 441f), vec4<f32>(-458f, 643f, -242f, 641f), vec4<f32>(1207f, 449f, 1143f, 1853f), vec4<f32>(1203f, 801f, -1117f, -1686f), vec4<f32>(1114f, -683f, 107f, -2616f), vec4<f32>(-2271f, 1536f, -318f, 1000f), vec4<f32>(470f, -557f, -1000f, 959f), vec4<f32>(400f, 1454f, 591f, -1477f), vec4<f32>(-588f, 1605f, -435f, 1373f), vec4<f32>(-1644f, -239f, -1480f, -1335f), vec4<f32>(538f, -246f, 752f, -250f), vec4<f32>(740f, 171f, -1000f, -1347f), vec4<f32>(-528f, 114f, 1153f, -316f), vec4<f32>(1512f, -1893f, 1124f, 1000f), vec4<f32>(-1000f, -1313f, 1137f, -493f));

var<private> global1: vec4<f32> = vec4<f32>(2106f, -897f, -718f, 361f);

var<private> global2: Struct_2;

var<private> global3: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-1436f, -1003f, 1114f), vec3<f32>(1000f, -1000f, -1182f), vec3<f32>(-1000f, 1244f, 1000f), vec3<f32>(491f, 1056f, -1215f), vec3<f32>(883f, 962f, -250f), vec3<f32>(-600f, -398f, -494f), vec3<f32>(-1216f, 953f, -494f), vec3<f32>(-1000f, -831f, 680f), vec3<f32>(-193f, 1146f, 169f), vec3<f32>(137f, -910f, -694f), vec3<f32>(-739f, -272f, -1000f), vec3<f32>(-108f, 626f, -614f), vec3<f32>(635f, -943f, 103f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_1(vec3<i32>(~(-14072i), _wgslsmith_mult_i32(-select(global2.b.b, u_input.b.x, false), 1i), global2.b.b), u_input.b.x, abs(arg_0.xwx), global2.b.d);
    var var_1 = !(!arg_1.x) & true;
    global0 = array<vec4<f32>, 19>();
    var var_2 = _wgslsmith_f_op_f32(-global1.x);
    var var_3 = 924f;
    return Struct_4(-_wgslsmith_div_vec4_i32(vec4<i32>(-u_input.b.x, u_input.b.x, 2147483647i, -924i), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, -2147483647i, var_0.b, -20372i), vec4<i32>(29667i, 0i, 23389i, 12685i)), vec4<i32>(global2.b.a.x, 2147483647i, 1i, global2.b.a.x), vec4<bool>(false, global2.a.x, false, true))), abs(-4695i), _wgslsmith_sub_vec4_u32(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.b.d.x, 40968u, 7738u, 5640u), ~vec4<u32>(1u, var_0.d.x, arg_0.x, var_0.c.x)), vec4<u32>(_wgslsmith_add_u32(global2.b.d.x, 35055u), _wgslsmith_dot_vec4_u32(global2.b.d, vec4<u32>(59989u, 0u, arg_0.x, 59540u)), u_input.a.x, u_input.a.x)), (_wgslsmith_add_vec4_u32(vec4<u32>(34908u, var_0.c.x, 1u, u_input.a.x), vec4<u32>(var_0.c.x, 41441u, 29017u, 1u)) & vec4<u32>(arg_0.x, 80654u, global2.b.d.x, 110039u)) >> (~select(vec4<u32>(var_0.c.x, var_0.c.x, u_input.a.x, u_input.a.x), vec4<u32>(68144u, u_input.a.x, arg_0.x, var_0.c.x), arg_1.x) % vec4<u32>(32u))), Struct_3(Struct_2(!select(arg_1, global2.a, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-2993i, 52221i, u_input.b.x), _wgslsmith_sub_i32(2147483647i, u_input.b.x), vec3<u32>(48908u, global2.b.c.x, 16025u), var_0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(888f, 1260f, -739f)) - vec3<f32>(762f, 962f, 1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(102f, global2.c.x)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global0 = array<vec4<f32>, 19>();
    let var_0 = Struct_5(firstLeadingBit(~(~reverseBits(global2.b.d.ywz))), Struct_3(Struct_2(!(!global2.a), Struct_1(arg_1.a ^ vec3<i32>(arg_0.b.a.x, -2147483647i, arg_0.b.a.x), global2.b.b, global2.b.c >> (arg_0.b.d.yxx % vec3<u32>(32u)), vec4<u32>(arg_1.d.x, arg_1.c.x, u_input.a.x, arg_1.d.x) << (arg_1.d % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1024f, arg_0.c.x, -1048f), vec3<f32>(-1316f, arg_0.c.x, -119f), arg_0.a)))));
    var var_1 = var_0.b.a.c.x;
    global3 = array<vec3<f32>, 13>();
    var var_2 = global2.c.x;
    return Struct_3(var_0.b.a);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32, arg_3: Struct_5) -> vec4<f32> {
    let var_0 = 45964u > func_2(func_2(~arg_3.b.a.b.d, !select(vec3<bool>(arg_0.d.a.a.x, arg_3.b.a.a.x, false), arg_3.b.a.a, arg_3.b.a.a.x)).d.a.b.d, vec3<bool>(arg_3.b.a.a.x, true, func_3(arg_3.b.a, arg_3.b.a.b).a.a.x || true)).c.x;
    let var_1 = func_3(arg_3.b.a, arg_0.d.a.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(max(global2.c.x, _wgslsmith_f_op_f32(-808f - var_1.a.c.x)))))) * _wgslsmith_div_f32(-389f, global1.x));
    let var_3 = arg_3.b;
    let var_4 = global1.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0[_wgslsmith_index_u32(74516u, 19u)]))))), global0[_wgslsmith_index_u32(~1u, 19u)]));
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_add_vec2_u32(u_input.a.zz, vec2<u32>(_wgslsmith_mult_u32(~1u, global2.b.d.x), global2.b.d.x));
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(func_2(vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(global2.b.c.zy, vec2<u32>(global2.b.c.x, 4294967295u)), 0u << (global2.b.d.x % 32u), _wgslsmith_add_u32(28574u, 1u)), select(select(vec3<bool>(true, false, global2.a.x), global2.a, false), global2.a, global2.a.x)), Struct_1(-vec3<i32>(-1i, global2.b.b, 25728i), ~global2.b.b, ~u_input.a.wxw ^ ~u_input.a.wzy, u_input.a), -200f, Struct_5(u_input.a.wzw, func_3(func_2(vec4<u32>(30997u, global2.b.d.x, var_0.x, 1u), global2.a).d.a, global2.b))))));
    return _wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(global2.b.a.x) & ((i32(-1i) * -1i) | u_input.b.x), -global2.b.a.x & 23278i), firstTrailingBit(~func_2(global2.b.d, global2.a).a.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i >> (0u % 32u);
    global3 = array<vec3<f32>, 13>();
    global0 = array<vec4<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), u_input.b.x, ~select(_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, 0u) << (global2.b.c.zz % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(abs(global2.b.c.xy), vec2<u32>(global2.b.c.x, 1u), _wgslsmith_mult_vec2_u32(global2.b.d.yy, vec2<u32>(global2.b.d.x, 0u))), false));
}

