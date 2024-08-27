struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<u32>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global3: i32 = 32188i;

var<private> global4: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-907f, 1000f, 1408f), vec3<f32>(788f, 1012f, 349f), vec3<f32>(-466f, 1560f, 396f), vec3<f32>(-2261f, 648f, -1384f), vec3<f32>(-290f, -1000f, 1000f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = Struct_3(vec3<bool>(global2.x, !(_wgslsmith_f_op_f32(-arg_0.e.x) == _wgslsmith_f_op_f32(arg_0.c.d + -1000f)), u_input.b.x <= 2147483647i));
    let var_1 = Struct_3(var_0.a);
    let var_2 = countOneBits(~0u);
    var var_3 = ~u_input.b.x;
    var_3 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), 0i, ~u_input.b.x | 29426i);
    return ~max(_wgslsmith_mod_vec2_u32(global1.xy, arg_0.c.a), ~global1.yx);
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_2(firstTrailingBit(func_3(Struct_4(Struct_2(vec2<u32>(global1.x, 1u), Struct_1(u_input.b, u_input.b.x, true), u_input.b.xw, -3688f, vec4<bool>(global2.x, true, global2.x, true)), false, Struct_2(vec2<u32>(u_input.a.x, 38690u), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), u_input.b.x, true), u_input.b.zw, -1000f, vec4<bool>(global2.x, false, global2.x, false)), abs(u_input.a.yy), vec2<f32>(-1000f, 1382f)))), Struct_1(~u_input.b, -_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, 1i, u_input.b.x), ~vec3<i32>(-75i, -43829i, -28088i)), true), u_input.b.zy, 115f, vec4<bool>(!(true & !global2.x), true, false, any(vec4<bool>(true, any(global2.yxz), false, select(true, false, true)))));
    let var_1 = true;
    global3 = _wgslsmith_clamp_i32(-(~countOneBits(countOneBits(-1i))), -2492i, _wgslsmith_add_i32(~u_input.b.x, reverseBits(~u_input.b.x)));
    global2 = var_0.e;
    let var_2 = firstLeadingBit(var_0.b.b);
    return u_input.a.xwz;
}

fn func_1() -> vec2<u32> {
    var var_0 = ~u_input.a;
    var var_1 = ~(~vec3<u32>(25214u, global1.x << (1u % 32u), firstTrailingBit(1u))) ^ ~func_2();
    let var_2 = Struct_1(max(vec4<i32>(u_input.b.x, 0i, 21901i, u_input.b.x), -abs(u_input.b)) | ~(countOneBits(u_input.b) & u_input.b), max(0i, u_input.b.x), abs(reverseBits(global1.x)) >= ~var_1.x);
    let var_3 = 0i;
    let var_4 = ~(-1i);
    return select(~countOneBits(var_1.zy & vec2<u32>(1u, 4294967295u)), var_0.xy, !global2.wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(min(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1302u, global1.x), global1.xy, global1.yx), func_1(), global1.yx), _wgslsmith_sub_vec2_u32(global1.yx, func_3(Struct_4(Struct_2(vec2<u32>(102002u, 31622u), Struct_1(u_input.b, u_input.b.x, global2.x), vec2<i32>(u_input.b.x, 87935i), -2043f, vec4<bool>(false, true, false, global2.x)), global2.x, Struct_2(global1.xx, Struct_1(vec4<i32>(u_input.b.x, -2147483647i, 0i, 33680i), u_input.b.x, false), u_input.b.yx, 141f, vec4<bool>(global2.x, global2.x, false, true)), vec2<u32>(global1.x, 50390u), vec2<f32>(-891f, -1121f))))), Struct_1(_wgslsmith_sub_vec4_i32(u_input.b, -u_input.b), firstTrailingBit(u_input.b.x), true), select(max(u_input.b.wx, ~vec2<i32>(u_input.b.x, u_input.b.x)), -u_input.b.zz, false & select(false, global2.x, true)), _wgslsmith_f_op_f32(sign(-682f)), !(!select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, true, global2.x)))), false, Struct_2(~u_input.a.xy, Struct_1(~min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~abs(-1898i), true), ~((u_input.b.yw >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) ^ vec2<i32>(1314i, u_input.b.x)), _wgslsmith_div_f32(-859f, _wgslsmith_f_op_f32(f32(-1f) * -248f)), select(vec4<bool>(false, true, true, u_input.b.x <= -1i), select(select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, false, true), global2.x), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, false)), !global2.x & (global2.x && false))), u_input.a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1184f, 1045f)), _wgslsmith_f_op_f32(trunc(-1982f)))));
    global4 = array<vec3<f32>, 5>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.e.x);
    var_0 = Struct_4(Struct_2(vec2<u32>(~(0u & u_input.a.x), ~global1.x | 4294967295u), Struct_1(u_input.b & _wgslsmith_div_vec4_i32(u_input.b, u_input.b), ~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), true), _wgslsmith_clamp_vec2_i32(~u_input.b.yw | vec2<i32>(u_input.b.x, -95i), vec2<i32>(select(var_0.a.b.a.x, var_0.c.b.a.x, global2.x), abs(-23136i)), ~(~var_0.a.b.a.wy)), -256f, vec4<bool>(!global2.x, false, !(!var_0.c.b.c), true)), true, var_0.c, min(abs(select(vec2<u32>(4294967295u, 0u), vec2<u32>(5328u, global1.x), var_0.c.e.x) >> (~global1.xz % vec2<u32>(32u))), vec2<u32>(_wgslsmith_sub_u32(global1.x, _wgslsmith_add_u32(11644u, u_input.a.x)), 26074u)), vec2<f32>(1083f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f * var_1) - _wgslsmith_f_op_f32(-1414f * 1118f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(-304f)), var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1978f, var_0.c.d, 630f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_0.e.x, var_1, -1295f)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-166f, 348f, 1189f, -123f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-184f, var_1, var_1, var_0.a.d))))))), -(~((vec2<i32>(0i, 0i) >> (vec2<u32>(u_input.a.x, global1.x) % vec2<u32>(32u))) & abs(vec2<i32>(-2147483647i, -2147483647i)))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(select(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), var_0.c.e), ~vec4<u32>(var_0.d.x, var_0.d.x, global1.x, 24486u)), vec4<u32>(~13562u, ~30230u, _wgslsmith_add_u32(var_0.c.a.x, 4294967295u), 0u)) >> (u_input.a % vec4<u32>(32u)), ~firstLeadingBit(4294967295u) >> (firstLeadingBit(reverseBits(1u) >> (var_0.a.a.x % 32u)) % 32u));
}

