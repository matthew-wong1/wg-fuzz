struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<bool, 8>;

var<private> global2: Struct_3;

var<private> global3: Struct_1;

var<private> global4: Struct_3;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = vec4<bool>(false, global2.a == _wgslsmith_f_op_f32(select(1f, -1874f, true || all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(global3.d.x, 8u)])))), any(vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(abs(26620u)), 8u)], global1[_wgslsmith_index_u32(reverseBits(global3.d.x), 8u)])), false);
    global2 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1351f, 662f)), 1000f)));
    let var_1 = -(~reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 1i, -14602i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 54717i, -1i, arg_0.x), vec4<i32>(-1641i, 1i, 1i, -26280i)))));
    global3 = Struct_1(315f, global3.c.yy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global3.a)), global4.a))), global4.a), (firstTrailingBit(vec2<u32>(global3.d.x, global3.d.x)) ^ reverseBits(abs(global3.d))) << (~global3.d % vec2<u32>(32u)));
    global0 = 4136u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(823f, global2.a)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f))) + _wgslsmith_f_op_f32(exp2(global2.a))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(337f - _wgslsmith_f_op_f32(472f * -241f)))), _wgslsmith_f_op_f32(global4.a * -1673f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - -1149f))));
    var var_2 = Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(~global3.d, _wgslsmith_div_vec2_u32(vec2<u32>(global3.d.x, 0u), vec2<u32>(4294967295u, 1u))) ^ min(~global3.d.x, _wgslsmith_mod_u32(arg_2, arg_1)), ~1u, ~_wgslsmith_sub_u32(arg_1, 0u) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25591u), ~global3.d), _wgslsmith_add_u32(~21572u, _wgslsmith_dot_vec3_u32(vec3<u32>(21290u, arg_1, 1u), select(vec3<u32>(global3.d.x, 44056u, arg_1), vec3<u32>(1u, global3.d.x, 55788u), vec3<bool>(false, true, true))))), Struct_1(-2111f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-823f, -595f), vec2<f32>(arg_3.a, arg_3.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-391f * -341f), -803f, var_1.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-147f, 1000f, -895f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(751f, arg_3.a, 198f)))), min(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, 0u)), min(vec2<u32>(2088u, global3.d.x), vec2<u32>(arg_1, 5063u))), max(vec2<u32>(arg_2, arg_2), ~vec2<u32>(arg_2, 16874u)))), Struct_1(_wgslsmith_f_op_f32(ceil(-182f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.b.x, arg_3.a)))) + global3.c.zy), vec3<f32>(global4.a, -975f, _wgslsmith_f_op_f32(ceil(var_1.x))), min(_wgslsmith_clamp_vec2_u32(global3.d & vec2<u32>(arg_1, global3.d.x), _wgslsmith_mod_vec2_u32(global3.d, global3.d), vec2<u32>(global3.d.x, 32657u) & vec2<u32>(arg_1, global3.d.x)), abs(~global3.d))), arg_3.a, Struct_1(_wgslsmith_f_op_f32(arg_0.x * 825f), _wgslsmith_f_op_vec2_f32(-var_1.yz), _wgslsmith_f_op_vec3_f32(-global3.c), vec2<u32>(64457u, 0u)));
    let var_3 = min(u_input.a.x, firstLeadingBit(-u_input.b.x));
    var var_4 = 29343u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(851f)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_i32(select(u_input.a, u_input.a, !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], true, var_0, true)), u_input.a))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_3 {
    global4 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1705f, -1324f)), _wgslsmith_f_op_f32(floor(global3.a))))))));
    let var_0 = global3.b;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(20514u, 4294967295u), 8u)];
    var var_2 = Struct_2(abs(vec4<u32>(global3.d.x, select(firstLeadingBit(1u), ~24260u, !global1[_wgslsmith_index_u32(55701u, 8u)]), ~(~6766u), ~min(global3.d.x, 1u))), Struct_1(-903f, vec2<f32>(860f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1065f * global2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1535f, global3.c.x) - vec3<f32>(global4.a, var_0.x, 1137f))), ~vec2<u32>(90111u, 1u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(4001u, global3.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(25570u, global3.d.x), global3.d))), Struct_1(_wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.a)), -1193f), global3.d.x, 1u, Struct_3(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a.x, arg_1.x, -1i, arg_1.x)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(629f, 176f)) + _wgslsmith_f_op_f32(sign(385f))), -273f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global3.c))) + _wgslsmith_f_op_vec3_f32(global3.c + _wgslsmith_div_vec3_f32(global3.c, vec3<f32>(-860f, arg_0, -1415f)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.x, 8228u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3.d.x), global3.d)), reverseBits(global3.d.x) & 0u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), global4.a) + _wgslsmith_f_op_f32(f32(-1f) * -545f)), Struct_1(122f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global3.c.yx)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1535f)), global2.a, _wgslsmith_f_op_f32(round(global2.a))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global3.c), global3.c))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global3.d.x, global3.d.x), ~global3.d)));
    let var_3 = firstLeadingBit(global3.d.x);
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a - 668f)))))));
}

fn func_1() -> StorageBuffer {
    global2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -203f), ~select(firstLeadingBit(u_input.a.yz), select(u_input.b, vec2<i32>(u_input.a.x, u_input.a.x), true), vec2<bool>(true, true)) >> (global3.d % vec2<u32>(32u)));
    var var_0 = vec3<i32>(0i, reverseBits(abs(_wgslsmith_mod_i32(u_input.b.x, countOneBits(u_input.b.x)))), 1i);
    var var_1 = select(~(vec2<u32>(_wgslsmith_mult_u32(global3.d.x, 1u), global3.d.x) >> (~vec2<u32>(53639u, global3.d.x) % vec2<u32>(32u))), ~vec2<u32>(firstLeadingBit(0u), _wgslsmith_clamp_u32(global3.d.x, firstTrailingBit(4294967295u), global3.d.x)), any(vec4<bool>(true || global1[_wgslsmith_index_u32(global3.d.x, 8u)], global1[_wgslsmith_index_u32(~global3.d.x, 8u)], false, !global1[_wgslsmith_index_u32(global3.d.x, 8u)] || all(vec2<bool>(global1[_wgslsmith_index_u32(global3.d.x, 8u)], true)))));
    var var_2 = -u_input.a.xzy << (vec3<u32>(global3.d.x, ~36036u, _wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.d.x, var_1.x), global3.d), vec2<u32>(7226u, 37346u)), global3.d)) % vec3<u32>(32u));
    var var_3 = vec3<i32>(1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(var_2.yx, u_input.a.yx)), -_wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.b.x, var_2.x, u_input.b.x)), select(_wgslsmith_mod_vec3_i32(u_input.a.xzx, vec3<i32>(781i, -2147483647i, u_input.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 38034i, var_2.x), vec3<i32>(var_0.x, var_0.x, -2147483647i)), vec3<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(39292u, 8u)], false))));
    return StorageBuffer(880f, global3.c, vec3<u32>(0u, firstTrailingBit(var_1.x), _wgslsmith_add_u32(countOneBits(1u), ~global3.d.x & min(global3.d.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(13151u, global3.d.x, global3.d.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5793u, global3.d.x, 37764u), vec3<u32>(24081u, 0u, global3.d.x)), max(global3.d.x, 1u)) & ~0u), min(firstTrailingBit(vec4<u32>(27632u, ~0u, _wgslsmith_clamp_u32(4294967295u, global3.d.x, 46420u), global3.d.x)), abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, global3.d.x, global3.d.x, global3.d.x), ~vec4<u32>(4294967295u, global3.d.x, 1u, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -520f) * _wgslsmith_f_op_f32(-global2.a)));
    let x = u_input.a;
    s_output = func_1();
}

