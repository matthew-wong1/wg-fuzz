struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<u32, 16>;

var<private> global2: vec3<u32> = vec3<u32>(15883u, 1u, 1u);

var<private> global3: array<i32, 8> = array<i32, 8>(4092i, 38381i, 7385i, -2894i, 413i, 2147483647i, 26882i, 26192i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a + 1672f), arg_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) - _wgslsmith_f_op_f32(f32(-1f) * -964f))) + arg_0.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(237f, -1407f, _wgslsmith_f_op_f32(sign(899f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1254f, -1436f, 513f)))))));
    var var_2 = -1i;
    let var_3 = arg_0.b;
    global1 = array<u32, 16>();
    return countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 29335u, 33192u ^ (_wgslsmith_mod_u32(34750u, global1[_wgslsmith_index_u32(1u, 16u)]) << (global0[_wgslsmith_index_u32(u_input.b.x, 30u)] % 32u))), 30u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -716f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(674f, -213f)), _wgslsmith_f_op_f32(f32(-1f) * -276f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-781f, -1000f)))) - _wgslsmith_div_f32(981f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1565f))))));
    global3 = array<i32, 8>();
    var var_1 = arg_2.x;
    var var_2 = Struct_5(true, arg_3, 1u, false, Struct_1(arg_3.a.a, firstTrailingBit((arg_2 | vec4<u32>(u_input.b.x, 4294967295u, global2.x, global2.x)) & arg_3.a.b)));
    let var_3 = arg_3.a;
    return _wgslsmith_f_op_f32(sign(-433f));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_3(Struct_1(true, ~(vec4<u32>(4160u, 0u, global2.x, 33006u) ^ vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 21032u, u_input.b.x, global1[_wgslsmith_index_u32(0u, 16u)]))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f + 2106f)) - _wgslsmith_f_op_f32(select(410f, -1652f, all(vec4<bool>(arg_0, true, false, arg_1.x))))), _wgslsmith_f_op_f32(func_4(vec2<i32>(0i, 11074i), vec3<i32>(~(-50730i), 4669i, global3[_wgslsmith_index_u32(func_3(Struct_2(-195f, vec3<u32>(var_0.a.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)])), Struct_1(true, vec4<u32>(681u, global2.x, var_0.a.b.x, 42248u))), 8u)]), var_0.a.b | vec4<u32>(38244u, 16133u, global0[_wgslsmith_index_u32(0u, 30u)], 1u), Struct_3(var_0.a))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(526f, _wgslsmith_f_op_f32(-var_1), var_1, 1000f) * vec4<f32>(_wgslsmith_f_op_f32(-865f - var_1), _wgslsmith_f_op_f32(abs(-704f)), _wgslsmith_f_op_f32(floor(-880f)), var_1))));
    var var_3 = Struct_3(var_0.a);
    var_0 = Struct_3(var_0.a);
    return var_0.a.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>) -> i32 {
    let var_0 = select(vec4<bool>(true, !arg_1.x, !arg_1.x & true, -12615i <= _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), select(arg_1, arg_1, select(func_2(true, arg_1), false, !arg_1.x)), arg_1);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(1f, 1f, 1f, 1f));
    var var_2 = any(var_0.ww) || false;
    var var_3 = 29796u;
    var var_4 = Struct_3(Struct_1(true, _wgslsmith_add_vec4_u32(vec4<u32>(0u, ~global2.x, ~u_input.b.x, countOneBits(37121u)), max(firstTrailingBit(vec4<u32>(4294967295u, arg_0.a.x, 3546u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(22353u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37503u, 30u)], 16u)], 1u, 4294967295u), vec4<u32>(global2.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 16u)], u_input.b.x, 32200u))))));
    return -_wgslsmith_mult_i32(~(-27173i), ~36721i);
}

fn func_5(arg_0: vec2<i32>) -> Struct_4 {
    global0 = array<u32, 30>();
    var var_0 = firstTrailingBit(~(~global2.x));
    let var_1 = Struct_3(Struct_1(false, firstTrailingBit(~(~vec4<u32>(global2.x, global2.x, global2.x, 13492u)))));
    var var_2 = var_1;
    let var_3 = vec3<i32>(countOneBits((u_input.a.x | _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) ^ u_input.a.x), ~(min(60526i, _wgslsmith_add_i32(1i, 20939i)) ^ -arg_0.x), global3[_wgslsmith_index_u32(countOneBits(var_2.a.b.x), 8u)]);
    return Struct_4(vec2<u32>(12314u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_2.a.b.x, 30u)], var_1.a.b.x, 1u), vec3<u32>(0u, var_1.a.b.x, global2.x)), abs(var_2.a.b.yxx)), 57739u | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(42675u, 6276u, 1u), 30u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_clamp_vec2_i32(abs(u_input.a.xx), vec2<i32>(0i, -2147483647i), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(21258i, u_input.a.x)) ^ u_input.a.x, func_1(Struct_4(global2.xz), vec4<bool>(true, true, true, true)))));
    global1 = array<u32, 16>();
    let var_1 = any(vec2<bool>(true, all(vec2<bool>(false, true))));
    var var_2 = Struct_3(Struct_1(func_2((false & var_1) | any(vec2<bool>(true, var_1)), select(!vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(false, true, var_1, false), vec4<bool>(false, false, var_1, false), var_1), !vec4<bool>(true, true, var_1, var_1))), _wgslsmith_mod_vec4_u32(vec4<u32>(~8572u, _wgslsmith_mult_u32(0u, u_input.b.x), ~var_0.a.x, ~u_input.b.x), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 1u, 4589u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 16u)], 30u)]), vec4<u32>(34211u, u_input.b.x, 36227u, global1[_wgslsmith_index_u32(var_0.a.x, 16u)]))))));
    global2 = max(vec3<u32>(~_wgslsmith_add_u32(var_2.a.b.x, global2.x) >> (0u % 32u), firstTrailingBit(_wgslsmith_add_u32(u_input.b.x >> (global1[_wgslsmith_index_u32(var_2.a.b.x, 16u)] % 32u), _wgslsmith_sub_u32(0u, var_2.a.b.x))), ~_wgslsmith_dot_vec2_u32(global2.zx, ~vec2<u32>(var_2.a.b.x, var_0.a.x))), var_2.a.b.wxz);
    var var_3 = !any(!(!select(vec2<bool>(var_2.a.a, var_1), vec2<bool>(var_1, var_1), var_1)));
    var var_4 = Struct_5(!(all(select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(true, var_1, false, var_1), vec4<bool>(var_1, false, var_2.a.a, true))) | !(!var_2.a.a)), Struct_3(Struct_1(!(!var_1), ~(~var_2.a.b))), 23724u, -956f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1668f * _wgslsmith_f_op_f32(round(1310f))))), Struct_1(var_1 || true, reverseBits(_wgslsmith_sub_vec4_u32(var_2.a.b, _wgslsmith_div_vec4_u32(var_2.a.b, var_2.a.b)))));
    var var_5 = Struct_5(true, Struct_3(var_4.b.a), global0[_wgslsmith_index_u32(var_2.a.b.x, 30u)], select(true, !(!(var_4.d != var_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1229f - -623f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(641f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(any(vec3<bool>(true, any(vec3<bool>(var_4.d, false, var_2.a.a)), true)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(global1[_wgslsmith_index_u32(global2.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], var_4.c, 66971u), ~var_2.a.b), ~var_2.a.b >> (~var_2.a.b % vec4<u32>(32u)), var_2.a.b)));
    let var_6 = Struct_2(_wgslsmith_f_op_f32(-1f), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(83792u, var_2.a.b.x, 4294967295u)), _wgslsmith_mult_vec3_u32(var_2.a.b.zyy, abs(vec3<u32>(28568u, 1u, global0[_wgslsmith_index_u32(var_0.a.x, 30u)]))), _wgslsmith_add_vec3_u32(~var_2.a.b.wzz, var_2.a.b.xzw & var_4.b.a.b.wyx)), ~(~vec3<u32>(1u, 4294967295u, var_2.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-798f, firstLeadingBit(~(~vec3<u32>(1u, u_input.b.x, 0u))), vec2<f32>(-477f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(177f, _wgslsmith_f_op_f32(step(var_6.a, var_6.a))))))), -(reverseBits(~vec4<i32>(u_input.a.x, -37560i, global3[_wgslsmith_index_u32(global2.x, 8u)], 1i)) >> (select(_wgslsmith_div_vec4_u32(vec4<u32>(var_5.e.b.x, 0u, global1[_wgslsmith_index_u32(var_4.e.b.x, 16u)], 80404u), var_2.a.b), _wgslsmith_mult_vec4_u32(vec4<u32>(41547u, var_6.b.x, 4294967295u, var_2.a.b.x), var_5.e.b), select(vec4<bool>(var_4.a, true, true, var_2.a.a), vec4<bool>(var_2.a.a, var_5.a, true, var_5.a), var_4.d)) % vec4<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~var_6.b, ~vec3<u32>(41129u, 70023u, var_5.b.a.b.x)), var_4.e.b.wxx), ~(~vec3<u32>(var_6.b.x, 0u, var_6.b.x)) ^ (var_6.b ^ firstLeadingBit(vec3<u32>(4294967295u, 1u, var_6.b.x)))));
}

