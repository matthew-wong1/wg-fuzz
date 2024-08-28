struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<i32, 24> = array<i32, 24>(2147483647i, -61450i, -5264i, -1i, 52882i, 18036i, 20161i, i32(-2147483648), 23083i, 2147483647i, 2147483647i, 73501i, 2147483647i, 46926i, -1i, 1i, -91229i, -74821i, -8823i, 2147483647i, -1i, -1i, 78521i, -1i);

var<private> global2: Struct_4 = Struct_4(1u);

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    global2 = Struct_4(reverseBits(4294967295u));
    global2 = Struct_4(_wgslsmith_add_u32(abs(min(global2.a, 1u) | (global2.a & global2.a)), ~(~(0u >> (global2.a % 32u)))));
    let var_0 = -global1[_wgslsmith_index_u32(~1u, 24u)];
    var var_1 = 822f;
    let var_2 = Struct_4(1u);
    return vec4<i32>(2147483647i, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -2147483647i, var_0, -43506i), vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(0u, 24u)]), vec4<i32>(global1[_wgslsmith_index_u32(global2.a, 24u)], 11753i, 2147483647i, 1i)), global1[_wgslsmith_index_u32(0u, 24u)] ^ global0[_wgslsmith_index_u32(7300u, 14u)], abs(-2147483647i))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, global2.a, var_2.a), vec3<u32>(global2.a, 52877u, 106731u), global3.x), _wgslsmith_mult_vec3_u32(vec3<u32>(15016u, 4294967295u, 52488u), vec3<u32>(0u, var_2.a, var_2.a))), 19791u), _wgslsmith_div_u32(max(global2.a >> (var_2.a % 32u), ~1u), var_2.a), ~80620u), 24u)], _wgslsmith_mult_i32(var_0, global1[_wgslsmith_index_u32(global2.a, 24u)]));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = select(true, !(!arg_2.a), all(select(!select(vec4<bool>(true, false, global3.x, true), vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(arg_2.a, global3.x, arg_2.a, global3.x)), vec4<bool>(!global3.x, true, false, select(true, false, true)), !select(vec4<bool>(global3.x, true, arg_2.a, global3.x), vec4<bool>(false, true, false, arg_2.a), false))));
    global3 = !vec4<bool>(!(global2.a <= 31153u), min(-2147483647i >> (1u % 32u), max(1i, -19952i)) <= _wgslsmith_mod_i32(u_input.a.x, arg_1.x), any(!vec4<bool>(true, true, true, arg_2.a)), global3.x);
    return vec4<bool>(all(!global3.wwy), _wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(22195u), global2.a ^ 4294967295u), global2.a) < min(96340u, select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.a, global2.a), vec3<u32>(global2.a, global2.a, 0u)), 4294967295u, global3.x & true)), all(select(vec2<bool>(true, true), select(!vec2<bool>(global3.x, true), select(global3.xx, global3.zw, global3.zx), any(vec4<bool>(global3.x, global3.x, false, global3.x))), any(!global3.xwy))), false);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(all(select(!vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(false, global3.x, global3.x, global3.x), arg_0 <= u_input.a.x)), -44311i), Struct_2(any(select(vec2<bool>(global3.x, global3.x), global3.zx, true == global3.x)), -_wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(57512u, 24u)], -23459i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(302f, -1193f, -459f))))))), global3.x);
    let var_1 = func_4((vec2<i32>(max(var_0.a.b, global0[_wgslsmith_index_u32(global2.a, 14u)]), min(-9105i, -2147483647i)) | -vec2<i32>(-24139i, 1i)) << (~(~(~vec2<u32>(7476u, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(~(vec4<i32>(1i, 1i, global0[_wgslsmith_index_u32(1u, 14u)], -1i) << (vec4<u32>(89815u, global2.a, global2.a, 52432u) % vec4<u32>(32u)))), func_3(), vec4<i32>(global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(global2.a, 67118u), _wgslsmith_div_u32(4294967295u, global2.a), true), 24u)], _wgslsmith_div_i32(arg_0, global1[_wgslsmith_index_u32(~global2.a, 24u)]), min(abs(arg_0), max(global1[_wgslsmith_index_u32(40930u, 24u)], -2147483647i)), max(0i, var_0.b.b))), Struct_1(any(!global3.zzz)));
    var var_2 = (_wgslsmith_add_i32(-39768i, min(_wgslsmith_add_i32(30589i, 1i), 2147483647i)) | global1[_wgslsmith_index_u32(reverseBits(global2.a), 24u)]) << (4294967295u % 32u);
    var var_3 = countOneBits(vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(~global2.a, global2.a)), _wgslsmith_sub_u32(global2.a, global2.a)));
    var_3 = select(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global2.a, ~var_3.x), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(0u, global2.a)), countOneBits(vec2<u32>(global2.a, global2.a))))), max(~firstLeadingBit(abs(vec2<u32>(0u, global2.a))), vec2<u32>(firstLeadingBit(var_3.x) ^ ~global2.a, _wgslsmith_mult_u32(~1u, ~global2.a))), false);
    return Struct_2(true, var_0.b.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_3 {
    global2 = Struct_4(~global2.a);
    let var_0 = Struct_2(arg_1, global1[_wgslsmith_index_u32(27479u, 24u)]);
    let var_1 = Struct_3(func_2(_wgslsmith_mod_i32(var_0.b, select(-1i, 1i, true))), func_2(reverseBits(~global0[_wgslsmith_index_u32(~arg_0.x, 14u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(537f, -1145f)) + _wgslsmith_f_op_f32(f32(-1f) * -1289f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(606f - -964f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f + 1000f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, 220f, 1413f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1481f, -1674f, -1118f) + vec3<f32>(-978f, 1433f, -1411f))))))), true | any(vec3<bool>(true, true, all(global3.wyz))));
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    return var_1;
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global3 = !(!(!vec4<bool>(global3.x, !arg_0.b.a, arg_0.b.a, true)));
    let var_0 = Struct_2(-58223i <= ~(global1[_wgslsmith_index_u32(countOneBits(1u), 24u)] & 27789i), abs(~global0[_wgslsmith_index_u32(firstLeadingBit(7087u), 14u)]) & 27069i);
    let var_1 = func_1(vec2<u32>(~global2.a, global2.a), _wgslsmith_clamp_u32(~global2.a, 2349u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(global2.a, global2.a))) >= global2.a, ~select(~global2.a, abs(global2.a), select(false, !arg_0.a.a, var_0.a)), !arg_0.a.a);
    return func_2(_wgslsmith_div_i32(-func_2(-1i).b, ~0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(global3.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.a, max(_wgslsmith_clamp_u32(50981u, global2.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(30827u, 37910u, global2.a), vec3<u32>(48736u, global2.a, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, global2.a, global2.a, 42309u), vec4<u32>(global2.a, global2.a, global2.a, 0u))), 14u)]), func_5(func_1((vec2<u32>(89902u, global2.a) << (vec2<u32>(31069u, 102660u) % vec2<u32>(32u))) & select(vec2<u32>(global2.a, global2.a), vec2<u32>(global2.a, 31700u), global3.wy), false, select(global2.a, 0u, global3.x) >> (34225u % 32u), true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(-1799f)), 1f, -2022f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1813f, 635f) + vec3<f32>(-269f, -162f, -998f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1959f, 171f, -903f))), global3.wyy)))))), all(global3.zyy));
    let var_1 = var_0.b;
    var var_2 = Struct_3(func_1(_wgslsmith_add_vec2_u32(select(vec2<u32>(8161u, global2.a) & vec2<u32>(4294967295u, 23895u), firstLeadingBit(vec2<u32>(1u, global2.a)), select(global3.zz, global3.xz, vec2<bool>(true, false))), countOneBits(vec2<u32>(15808u, global2.a))), !(false & global3.x), ~(~max(global2.a, global2.a)), any(vec3<bool>(true, var_1.a, true))).a, Struct_2(!((global2.a >> (global2.a % 32u)) <= abs(4294967295u)), -u_input.a.x), var_0.c, _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1000f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f) * 681f)));
    let var_3 = ~countOneBits(select(~(~vec2<u32>(global2.a, global2.a)), vec2<u32>(46017u, 66u), global3.zz));
    let var_4 = func_1(~var_3, var_2.d, ~countOneBits(select(3128u, _wgslsmith_mod_u32(4294967295u, var_3.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) <= 1773f);
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, -304f, _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(trunc(var_2.c.x)))), _wgslsmith_f_op_f32(sign(-292f)))));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f - 2918f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, _wgslsmith_clamp_u32(global2.a, 4078u, 32248u)), reverseBits(max(var_3.x, 83722u)), ~1u);
}

