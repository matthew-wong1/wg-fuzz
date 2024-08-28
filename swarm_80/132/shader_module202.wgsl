struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 28> = array<u32, 28>(70280u, 1u, 4294967295u, 4294967295u, 1u, 4294967295u, 1u, 42953u, 26301u, 0u, 1u, 78426u, 141891u, 0u, 4294967295u, 25341u, 17345u, 49344u, 60697u, 17353u, 30773u, 29341u, 4294967295u, 1u, 21596u, 1u, 1u, 0u);

var<private> global2: array<i32, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = abs(1u);
    let var_1 = global0.c.a;
    var var_2 = _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(_wgslsmith_mult_u32(39455u, 0u), var_0, ~abs(global0.a.x), max(_wgslsmith_div_u32(var_0, 0u & global0.a.x), 0u)));
    var_2 = 10075u;
    var var_3 = reverseBits(firstLeadingBit(75798i));
    return vec2<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 28u)] ^ var_0), 22886u)), reverseBits(global0.a.x));
}

fn func_3() -> vec4<f32> {
    global1 = array<u32, 28>();
    let var_0 = global0.b.yz;
    var var_1 = firstTrailingBit(global0.a.yx);
    var var_2 = global0.c;
    var var_3 = Struct_1(-global0.c.a);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(252f)), _wgslsmith_f_op_f32(-605f + -566f))) + 1447f), -441f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1625f))), _wgslsmith_f_op_f32(f32(-1f) * -157f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(867f, 1674f))), 418f)) - 392f));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = (7545u | firstTrailingBit(0u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(34001u, ~10595u), global0.a.zy ^ ~func_2(global0.b.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1047f, var_1.x)) - 1000f)), var_1.x, arg_3.x));
    let var_3 = _wgslsmith_div_vec3_u32(global0.a.xzy | ~vec3<u32>(29131u, ~18975u, arg_1), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], var_0, 4294967295u), global0.a.wzw, vec3<u32>(arg_1, 34070u, 1u))));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, 826f);
    return Struct_2(~global0.a, !vec3<bool>((u_input.a.x ^ -6963i) >= -global2[_wgslsmith_index_u32(25769u, 27u)], false, false), global0.c);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    let var_0 = func_1(Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(50061u, 27u)], -1i), 2147483647i), max(~0i, _wgslsmith_div_i32(-1i, global2[_wgslsmith_index_u32(9611u, 27u)])), -max(arg_2.c.a.x, 1i), i32(-1i) * -global0.c.a.x)), 1u, min(firstTrailingBit(arg_2.c.a.xx) >> ((vec2<u32>(global0.a.x, 0u) | vec2<u32>(31546u, 67926u)) % vec2<u32>(32u)), abs(-vec2<i32>(38942i, global0.c.a.x))) ^ _wgslsmith_mult_vec2_i32(u_input.a, func_1(Struct_1(global0.c.a), 4294967295u, u_input.a, global0.b.xy).c.a.xx << (vec2<u32>(arg_2.a.x, 34822u) % vec2<u32>(32u))), arg_2.b.xz);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(722f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-295f * -1600f))), _wgslsmith_f_op_f32(round(-1354f))))), _wgslsmith_clamp_u32(abs(abs(arg_2.a.x)), 1u, 27575u) != 66554u));
    let var_2 = var_0.b.x & !(!var_0.b.x | !(u_input.a.x > -29837i));
    var var_3 = all(!vec4<bool>(any(vec4<bool>(var_2, true, var_0.b.x, false)), false, var_2, !var_2)) & false;
    var var_4 = min(~abs(arg_1 >> (vec4<u32>(global0.a.x, var_0.a.x, arg_0, 4294967295u) % vec4<u32>(32u))) ^ ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, 0u, arg_1.x, 0u), firstLeadingBit(var_0.a), arg_1), vec4<u32>(~select(~4294967295u, global0.a.x, arg_2.b.x), arg_0, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0.a.x, 0u), ~(var_0.a.x | arg_1.x), var_0.a.x << ((arg_2.a.x | var_0.a.x) % 32u)), 28u)], 55141u));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.a, max(~global0.a, var_0.a) & firstTrailingBit(arg_2.a)), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -982f;
    global2 = array<i32, 27>();
    var var_1 = -global0.c.a.zz | ~abs(u_input.a);
    var var_2 = abs(0u);
    var var_3 = firstLeadingBit(~global0.a.x);
    let var_4 = ~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-13531i, 1i, global2[_wgslsmith_index_u32(54819u, 27u)], 1i), _wgslsmith_add_vec4_i32(-global0.c.a, firstLeadingBit(vec4<i32>(-31057i, global2[_wgslsmith_index_u32(global0.a.x, 27u)], 2147483647i, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~((_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 0u), vec2<u32>(global0.a.x, 1u)) | min(global0.a.x, 25964u)) >> (~0u % 32u)), vec2<i32>(-1i, 16187i) | vec2<i32>(func_4(global0.a.x, vec4<u32>(1u, 4294967295u, 28507u, global0.a.x) & global0.a, func_1(global0.c, 4294967295u, var_4.wz, global0.b.zx)), _wgslsmith_add_i32(~(-73968i), -global2[_wgslsmith_index_u32(0u, 27u)])), 1i);
}

