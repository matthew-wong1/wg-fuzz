struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 8>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.d.x;
    var var_1 = countOneBits(-_wgslsmith_add_i32(select(global0.a, u_input.b.x, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]) << (abs(u_input.a.x) % 32u), global0.a));
    var var_2 = all(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 8u)], global1[_wgslsmith_index_u32(global0.b.x, 8u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(global0.b.x, 8u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 8u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false), global1[_wgslsmith_index_u32(u_input.d.x, 8u)])), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(global0.b.x, 8u)]), true), vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d.x, 1982u), 8u)], true), !all(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)]))));
    var var_3 = Struct_2(reverseBits(0u), u_input.d.zz ^ ~vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(global0.b.x, max(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(1u, 0u, global0.b.x, 105177u)), _wgslsmith_clamp_vec4_u32(global0.b, global0.b, vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.d.x))), _wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(57835u, 40624u, u_input.a.x, global0.b.x))), _wgslsmith_sub_vec2_u32(u_input.a, global0.b.xx) >> (global0.b.wz % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1285f, 208f, 1938f, 252f)))))), false, Struct_1(~(abs(u_input.a.x) ^ u_input.a.x), vec4<u32>(global0.b.x, 1u, abs(global0.b.x ^ global0.b.x), _wgslsmith_mult_u32(~129472u, u_input.d.x)), select(global0.b.zy, ~vec2<u32>(0u, global0.b.x), vec2<bool>(true, global1[_wgslsmith_index_u32(11102u, 8u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-386f, -2075f, -525f, 241f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(603f, -813f, 697f, 1618f))), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])))));
    var var_4 = true;
    return _wgslsmith_mod_vec2_u32(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(global0.b.x, 1u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, var_3.c.a), var_3.b), true), ~vec2<u32>(~global0.b.x, reverseBits(46069u) << ((global0.b.x << (13033u % 32u)) % 32u)));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_3(u_input.c, ~min(_wgslsmith_sub_vec4_u32(global0.b, vec4<u32>(0u, 52389u, global0.b.x, u_input.d.x)), ~global0.b));
    global1 = array<bool, 8>();
    global1 = array<bool, 8>();
    var var_1 = Struct_2(global0.b.x, u_input.a, Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(select(vec3<u32>(var_0.b.x, u_input.d.x, 4294967295u), u_input.d, false)), _wgslsmith_mod_vec3_u32(~u_input.d, var_0.b.zww)), ~global0.b >> ((~vec4<u32>(global0.b.x, 76490u, u_input.a.x, global0.b.x) | firstLeadingBit(vec4<u32>(global0.b.x, u_input.d.x, u_input.d.x, 85112u))) % vec4<u32>(32u)), _wgslsmith_sub_vec2_u32(func_3(), u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1359f + 783f), _wgslsmith_f_op_f32(-200f - -1000f), _wgslsmith_f_op_f32(sign(118f)), 809f))), true, Struct_1(max(var_0.b.x, _wgslsmith_mod_u32(firstTrailingBit(u_input.d.x), 25017u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 0u, 0u), vec4<u32>(4294967295u, 1159u, 1u, u_input.d.x))), var_0.b.wx, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1147f, 294f, global1[_wgslsmith_index_u32(var_0.b.x, 8u)])), 423f, -901f, _wgslsmith_div_f32(1028f, -1250f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-250f, 459f, -760f, 458f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.d.x, -349f, var_1.c.d.x))))), var_1.e.d.zzx, (func_3().x <= u_input.a.x) & true)));
    return ~(~((reverseBits(global0.b.zz) & _wgslsmith_sub_vec2_u32(global0.b.ww, u_input.d.yy)) << (var_0.b.ww % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    global1 = array<bool, 8>();
    global0 = Struct_3(global0.a, (_wgslsmith_sub_vec4_u32(arg_1.b, ~global0.b) ^ ~arg_1.b) | _wgslsmith_add_vec4_u32(~vec4<u32>(10820u, 4294967295u, 4294967295u, 44788u), arg_1.b));
    var var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(15435u, u_input.d.x), arg_0.c & global0.b.xz), _wgslsmith_mod_vec2_u32(func_2(), _wgslsmith_sub_vec2_u32(u_input.d.xy, arg_0.c))), vec2<u32>(arg_0.a, countOneBits(0u) ^ ~u_input.d.x)) >> (~(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.b.xw, vec2<u32>(global0.b.x, 76476u), vec2<u32>(3018u, global0.b.x)), vec2<u32>(u_input.a.x, 8891u) << (u_input.d.yx % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_1 = ~(~vec3<i32>(8401i, -2147483647i, -1i));
    var_1 = _wgslsmith_add_vec3_i32(countOneBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_1.x, u_input.b.x), vec3<i32>(1i, -9469i, 336i)) << ((_wgslsmith_mod_vec3_u32(u_input.d, arg_0.b.wwy) >> ((arg_0.b.yxy >> (vec3<u32>(u_input.d.x, var_0.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))), min(_wgslsmith_sub_vec3_i32(max(~vec3<i32>(2147483647i, -2147483647i, u_input.b.x), reverseBits(vec3<i32>(var_1.x, -2501i, u_input.c))), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-23362i, var_1.x, -2147483647i), vec3<i32>(-13663i, 9430i, -16134i)), ~vec3<i32>(u_input.c, var_1.x, 27846i), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 8u)], global1[_wgslsmith_index_u32(global0.b.x, 8u)], false), vec3<bool>(global1[_wgslsmith_index_u32(3091u, 8u)], false, global1[_wgslsmith_index_u32(arg_1.c.x, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(77389u, 8u)], global1[_wgslsmith_index_u32(17940u, 8u)], false)))), ~(-vec3<i32>(var_1.x, 17500i, global0.a))));
    return 2455u;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(max(global0.a, _wgslsmith_sub_i32(max(_wgslsmith_mod_i32(u_input.c, u_input.b.x), global0.a), reverseBits(~global0.a))), reverseBits(~(~vec4<u32>(12909u, 1u, 86900u, global0.b.x) | vec4<u32>(arg_0.b.x, global0.b.x, 72963u, u_input.d.x))));
    let var_1 = !(!vec3<bool>(true, max(1i, u_input.b.x) > ~28997i, any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)])) | false));
    var var_2 = false;
    var var_3 = var_0.b;
    var var_4 = arg_0;
    return Struct_2(func_3().x, vec2<u32>(_wgslsmith_dot_vec4_u32(var_4.b, ~var_4.b >> (vec4<u32>(var_4.c.x, var_0.b.x, 0u, var_4.c.x) % vec4<u32>(32u))), ~var_0.b.x ^ 0u), Struct_1(21133u, var_4.b, ~var_3.xw >> (vec2<u32>(arg_0.b.x >> (4294967295u % 32u), ~5435u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-arg_0.d)), true, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(~func_1(Struct_1(global0.b.x, global0.b, vec2<u32>(global0.b.x, u_input.a.x), vec4<f32>(-411f, 713f, 350f, -630f)), Struct_1(u_input.d.x, vec4<u32>(u_input.d.x, 0u, global0.b.x, 18121u), vec2<u32>(global0.b.x, 55356u), vec4<f32>(-559f, -1001f, -1000f, -1730f)), vec4<f32>(-1195f, 472f, -264f, 186f)) & ~(0u << (u_input.a.x % 32u)), ~global0.b, _wgslsmith_mod_vec2_u32(func_3(), vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.a))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_div_f32(664f, -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-745f - 1270f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -1063f), -410f)))));
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1293f, _wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -531f))))) * _wgslsmith_f_op_f32(var_0.e.d.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-481f, var_0.c.d.x, var_0.d)))), var_0.c.d.x))));
    let var_3 = var_0.d || true;
    var var_4 = Struct_3(_wgslsmith_div_i32(0i, firstTrailingBit(-_wgslsmith_add_i32(u_input.c, u_input.b.x))), countOneBits(vec4<u32>(4294967295u, ~(var_1.b.x & 45982u), select(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, global0.b.x), u_input.d.xz), false), (33451u & var_1.b.x) << (4294967295u % 32u))));
    let var_5 = abs(vec4<i32>(~var_4.a, -global0.a, 1i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b)));
    var_4 = Struct_3(var_5.x, global0.b);
    let var_6 = vec2<f32>(774f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.d.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, 145f))) - var_0.e.d.x));
    var var_7 = -862f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, var_6.x, 562f)))), var_5.x, var_0.e.c.x, var_6.x);
}

