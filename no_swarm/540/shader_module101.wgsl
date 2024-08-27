struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32;

var<private> global2: array<i32, 13>;

var<private> global3: array<u32, 16> = array<u32, 16>(58662u, 4294967295u, 1u, 0u, 0u, 1u, 72037u, 4294967295u, 18089u, 11365u, 14592u, 4294967295u, 4294967295u, 19198u, 0u, 96005u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_2(1825f, _wgslsmith_clamp_vec4_i32(-min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 1i, -2147483647i, u_input.c), vec4<i32>(u_input.c, -2147483647i, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(0u, 13u)])), -vec4<i32>(0i, -2147483647i, 2147483647i, u_input.c)), abs(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.c, 2147483647i, u_input.c, 1i)))), ~vec4<i32>(-1i, firstTrailingBit(u_input.c), -u_input.c, -u_input.c)), -_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(1u, 13u)], abs(select(-2147483647i, u_input.c, true)), u_input.c), vec3<bool>(true, (_wgslsmith_f_op_f32(exp2(arg_0.x)) < arg_0.x) || true, !all(vec3<bool>(true, true, true))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-755f, var_0.a))), -665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2024f))), 799f);
    let var_2 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(select(1u, 17926u, true), ~62050u, min(4294967295u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(66411u, 16u)], 16u)], 11619u, 35071u), u_input.a ^ vec3<u32>(u_input.b.x, 45110u, 1u), ~vec3<u32>(global3[_wgslsmith_index_u32(0u, 16u)], u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25301u, 16u)], 16u)], 16u)])) >> (_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38517u, 16u)], 16u)], 16u)], u_input.e.x, 1u)), abs(vec3<u32>(0u, 45203u, 0u))) % vec3<u32>(32u)));
    return -557f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.xz)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1305f), _wgslsmith_f_op_f32(func_3(arg_1)))), _wgslsmith_f_op_vec2_f32(abs(arg_0.yy)), arg_2)), _wgslsmith_f_op_vec2_f32(sign(arg_1.zw)), arg_2.x));
    global0 = 1u == u_input.a.x;
    var var_1 = _wgslsmith_clamp_i32(firstLeadingBit(~(-12906i)), ~(-34037i), abs(~(~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50029u, 16u)], 16u)], 13u)], global2[_wgslsmith_index_u32(43286u, 13u)]))));
    let var_2 = vec4<bool>(any(!vec4<bool>(arg_2.x | false, true, !arg_2.x, true)), arg_2.x, arg_2.x, arg_2.x);
    var var_3 = firstTrailingBit(~(-2147483647i));
    return 0u;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    global1 = abs(~(-arg_0.c));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(1000f - arg_0.a)), 327f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a), -327f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-438f, arg_0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_div_f32(arg_0.a, arg_0.a), 659f);
    var var_1 = -(_wgslsmith_dot_vec4_i32(vec4<i32>(18898i, _wgslsmith_dot_vec3_i32(vec3<i32>(-12762i, global2[_wgslsmith_index_u32(10149u, 13u)], 2147483647i), vec3<i32>(-3324i, -19991i, global2[_wgslsmith_index_u32(4294967295u, 13u)])), -u_input.c, firstLeadingBit(26099i)), vec4<i32>(~(-35115i), _wgslsmith_dot_vec3_i32(vec3<i32>(-18565i, arg_0.b.x, u_input.c), vec3<i32>(-4195i, 0i, u_input.c)), countOneBits(u_input.c), -7787i)) ^ reverseBits(~1i));
    var_1 = i32(-1i) * -arg_0.b.x;
    let var_2 = u_input.e.x;
    return var_0;
}

fn func_1() -> f32 {
    var var_0 = 338f;
    let var_1 = func_4(Struct_2(-610f, vec4<i32>(~(~(-20428i)), countOneBits(7021i), ~(-u_input.c), 2147483647i), -1i, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), vec4<u32>(_wgslsmith_div_u32(u_input.e.x, u_input.a.x), ~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(vec3<f32>(-377f, 271f, -844f), vec4<f32>(-293f, -131f, -938f, 607f), vec2<bool>(false, false)), u_input.b.x), 16u)], u_input.b.x, ~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(808f, 307f, 1000f) * vec3<f32>(-1874f, -1233f, -700f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1197f, 559f, 1330f, -2054f)), vec2<bool>(true, true))));
    var_0 = _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-var_1.b));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(u_input.e.x, 16u)], firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b.x, 16u)])), 13u)], select(-26367i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(19819u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], -2147483647i, -2147483647i), vec4<i32>(-1i, 63753i, -1i, global2[_wgslsmith_index_u32(1u, 13u)]))), -12614i > _wgslsmith_add_i32(u_input.c, u_input.c)), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d.x, u_input.a.x), 13u)], ~u_input.c)), vec3<i32>(-(~(-33665i)), ~(-(i32(-1i) * -2147483647i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(29958u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)]), 13u)]), ~(-1i))));
    let var_3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(max(u_input.a.x, u_input.e.x), 16u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 16u)], 104805u, 21237u, 4294967295u), vec4<u32>(24499u, 0u, 13602u, 1u)), max(4294967295u, 1u), 1u) ^ ((~vec4<u32>(u_input.d.x, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], u_input.e.x) >> (~vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.d.x) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 16u)], 16u)], 16u)], 16u)], 1u, u_input.a.x, 18682u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10000u, 16u)], 16u)], 0u, u_input.a.x, 25928u) << (vec4<u32>(u_input.e.x, u_input.d.x, 14777u, 0u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 0u, 50890u))) % vec4<u32>(32u))), firstTrailingBit((_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(20232u, 16u)], 1u, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(0u, 16u)]), vec4<u32>(u_input.e.x, global3[_wgslsmith_index_u32(1u, 16u)], 0u, global3[_wgslsmith_index_u32(0u, 16u)])) & ~vec4<u32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.a.x, 28434u)) & max(vec4<u32>(u_input.b.x, 4294967295u, 46162u, 24495u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 24549u, u_input.d.x, 16201u), vec4<u32>(54126u, 52480u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)], global3[_wgslsmith_index_u32(u_input.a.x, 16u)])))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(firstTrailingBit(4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(-106f)), _wgslsmith_f_op_f32(func_1()), 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1937f, -931f, -204f))), vec3<bool>(true, false, true)))))), min(~_wgslsmith_sub_vec3_i32(vec3<i32>(-19642i, 18343i, 3664i) | vec3<i32>(u_input.c, 43872i, 9016i), vec3<i32>(u_input.c, -6009i, u_input.c) & vec3<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], u_input.c, global2[_wgslsmith_index_u32(51291u, 13u)])), min(_wgslsmith_sub_vec3_i32(vec3<i32>(-46337i, u_input.c, u_input.c), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(66894u, 13u)], u_input.c)) & (vec3<i32>(1i, 1i, 3205i) & vec3<i32>(27979i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e.x, 16u)], 13u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 13u)])), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1190i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50397u, 16u)], 13u)], -1i), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(0u, 13u)], -2147483647i)))), vec4<i32>(countOneBits(1i), 1i, i32(-1i) * -global2[_wgslsmith_index_u32(32493u, 13u)], _wgslsmith_div_i32(-21349i, _wgslsmith_dot_vec4_i32(vec4<i32>(2198i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, -49950i, -2147483647i)))) << ((~(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.d.x, 0u, global3[_wgslsmith_index_u32(0u, 16u)])) << (vec4<u32>(~1u, u_input.a.x ^ u_input.d.x, countOneBits(8042u), _wgslsmith_div_u32(12532u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

