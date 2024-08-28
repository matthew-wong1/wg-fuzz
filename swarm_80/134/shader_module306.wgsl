struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: array<f32, 6>;

var<private> global3: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(1439f, 349f, -1559f), vec3<f32>(-2018f, 224f, -1763f), vec3<f32>(-142f, -164f, 1187f), vec3<f32>(-709f, 208f, 1699f), vec3<f32>(-928f, -860f, 424f), vec3<f32>(928f, 659f, -245f), vec3<f32>(430f, -1571f, 1331f), vec3<f32>(-736f, -613f, 274f), vec3<f32>(-1888f, -1702f, 1434f), vec3<f32>(-900f, -311f, 121f), vec3<f32>(105f, -154f, 601f), vec3<f32>(-134f, 1000f, 351f), vec3<f32>(218f, 283f, 1318f), vec3<f32>(-1433f, -603f, -161f), vec3<f32>(2057f, 1424f, 2703f), vec3<f32>(-254f, 1000f, -163f), vec3<f32>(-166f, -757f, 788f), vec3<f32>(-955f, 154f, -1048f));

var<private> global4: array<Struct_4, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    let var_0 = global4[_wgslsmith_index_u32(~12467u, 22u)];
    let var_1 = Struct_4(global0.b.yy, Struct_2(vec4<u32>(~var_0.b.a.x, var_0.b.a.x, ~var_0.b.a.x >> (min(33409u, var_0.b.a.x) % 32u), 35233u)), true);
    var var_2 = var_1.b.a.x;
    global4 = array<Struct_4, 22>();
    global4 = array<Struct_4, 22>();
    return vec4<bool>(var_1.c, true, false, 0i < reverseBits(_wgslsmith_mult_i32(global0.b.x, -1i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> u32 {
    global4 = array<Struct_4, 22>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~1u, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -1069f))) * -1369f)));
    var var_1 = _wgslsmith_div_f32(-1331f, arg_2.x);
    var var_2 = global4[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(min(2967u, 43580u), reverseBits(1u))) >> (1u % 32u), 22u)];
    let var_3 = Struct_3(!func_3().ywx, vec3<i32>(firstTrailingBit(global0.b.x), ~1i, -33816i));
    return _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(~abs(firstTrailingBit(var_2.b.a.x)), _wgslsmith_mod_u32(min(~0u, var_2.b.a.x ^ var_2.b.a.x), countOneBits(~var_2.b.a.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~func_4(vec3<bool>(global0.a.x, all(func_3()), global0.a.x && global0.a.x), vec3<f32>(_wgslsmith_f_op_f32(870f - -1226f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)]) - 1f), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~154130u, 6u)], global2[_wgslsmith_index_u32(66056u, 6u)]))), global3[_wgslsmith_index_u32(1u, 18u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(1u, 18u)] * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(33824u, 6u)], -1208f), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], -355f), global3[_wgslsmith_index_u32(0u, 18u)]))))));
    global0 = Struct_3(select(select(global0.a, select(!global0.a, vec3<bool>(global0.a.x, global0.a.x, false), select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, false, false), vec3<bool>(global0.a.x, true, false))), false), global0.a, true), vec3<i32>(_wgslsmith_clamp_i32(~(~11820i), _wgslsmith_mod_i32(1i, -5724i), min(1i, -global0.b.x)), max(abs(u_input.a), -u_input.a), u_input.a));
    var var_2 = func_3();
    let var_3 = global4[_wgslsmith_index_u32(48773u, 22u)];
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(var_3.b.a.yyz, vec3<u32>(0u, var_3.b.a.x, var_3.b.a.x))), 6u)] * -1000f), _wgslsmith_f_op_f32(select(-2228f, _wgslsmith_f_op_f32(var_1.x + global2[_wgslsmith_index_u32(1u, 6u)]), any(var_2.zxx))), _wgslsmith_f_op_f32(step(1943f, -935f)), global2[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(5905u, 6u)], 1151f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2564f, 286f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 731f)))), true)), (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b.a.x, var_3.b.a.x, 49777u), var_3.b.a.zyw, ~var_3.b.a.zzz) >> (vec3<u32>(0u, var_3.b.a.x, ~1u) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(var_3.b.a.x, 0u, 0u)), ~vec3<u32>(var_3.b.a.x, var_3.b.a.x, var_3.b.a.x)), -(~(-firstTrailingBit(global0.b.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> u32 {
    let var_0 = 1u;
    let var_1 = func_2();
    let var_2 = 16019u;
    let var_3 = Struct_2(_wgslsmith_sub_vec4_u32(firstTrailingBit(firstTrailingBit(vec4<u32>(39022u, arg_2.b.a.x, var_0, arg_1.a.x) >> (vec4<u32>(0u, 4294967295u, 0u, 0u) % vec4<u32>(32u)))), ~arg_1.a));
    global3 = array<vec3<f32>, 18>();
    return ~arg_2.b.a.x;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = vec4<f32>(1463f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(func_5(func_2(), Struct_2(vec4<u32>(50907u, 0u, arg_0, 4294967295u)), global4[_wgslsmith_index_u32(arg_0, 22u)], abs(u_input.b)), 6u)], global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(57838u, arg_0), 6u)])), _wgslsmith_f_op_f32(-631f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1487f, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(arg_0, 6u)])))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~arg_0, 6u)]))));
    var var_1 = any(vec2<bool>((31974u <= max(arg_0, 3362u)) & false, !(!select(global0.a.x, global0.a.x, false))));
    global4 = array<Struct_4, 22>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u & arg_0, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -1700f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(505f, 432f)))), 367f, 577f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.yy))), _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(arg_0), arg_0, arg_0), ~vec3<u32>(arg_0, firstLeadingBit(7911u), ~12807u)), 77647i);
    var var_3 = firstTrailingBit(~vec4<i32>(~(-1i), var_2.d, countOneBits(-2147483647i), u_input.b) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(49486u, 1u, var_2.c.x, var_2.c.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(3239u, var_2.c.x, 24161u, var_2.c.x), vec4<u32>(1u, 1u, var_2.c.x, 27286u)), ~vec4<u32>(4294967295u, var_2.c.x, arg_0, arg_0)) % vec4<u32>(32u)));
    return !vec4<bool>(true, any(!select(global0.a.xy, global0.a.yy, vec2<bool>(global0.a.x, true))), global0.a.x, ~(671u | arg_0) != _wgslsmith_clamp_u32(1u, ~1u, ~var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1(_wgslsmith_mult_u32(select(0u, 1u, global0.a.x), reverseBits(0u))));
    global4 = array<Struct_4, 22>();
    var var_1 = ~(~abs(~(~vec2<u32>(39608u, 1u))));
    global1 = false;
    let var_2 = min(1i, -2909i & global0.b.x) >> (var_1.x % 32u);
    var var_3 = 4294967295u;
    var_1 = ~(~(vec2<u32>(var_1.x, var_1.x) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(11203u, var_1.x), select(vec2<u32>(var_1.x, var_1.x), vec2<u32>(1676u, var_1.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, var_1.x >> (var_1.x % 32u)), 6u)])), vec2<u32>(_wgslsmith_sub_u32(~11201u, 1u), _wgslsmith_add_u32(firstLeadingBit(var_1.x), ~10640u & ~var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1316f, global2[_wgslsmith_index_u32(0u, 6u)])), global2[_wgslsmith_index_u32(func_4(vec3<bool>(var_0.x, global0.a.x, var_0.x), global3[_wgslsmith_index_u32(0u, 18u)], vec3<f32>(-828f, 603f, 309f)), 6u)], global2[_wgslsmith_index_u32(var_1.x, 6u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 6u)]))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-610f - global2[_wgslsmith_index_u32(var_1.x, 6u)]), 715f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.x, 6u)]), 1f)))));
}

