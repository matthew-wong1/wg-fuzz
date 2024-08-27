struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: array<bool, 29> = array<bool, 29>(false, false, true, false, false, false, true, false, false, true, false, true, true, false, true, false, true, false, true, false, true, true, true, false, false, true, false, false, true);

var<private> global2: array<u32, 21>;

var<private> global3: array<u32, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(f32(-1f) * -2063f));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_clamp_u32(~1u, u_input.d.x & u_input.d.x, 14885u)), global3[_wgslsmith_index_u32(u_input.d.x, 11u)]), 18u)];
    global3 = array<u32, 11>();
    global0 = array<Struct_3, 18>();
    global3 = array<u32, 11>();
    return u_input.b << (~abs(_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(83498u, 11u)], 4294967295u, global3[_wgslsmith_index_u32(13044u, 11u)], u_input.d.x), vec4<u32>(global3[_wgslsmith_index_u32(75105u, 11u)], 29065u, 6338u, u_input.d.x))) % vec4<u32>(32u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global1 = array<bool, 29>();
    let var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.b, arg_0.b), vec3<i32>(arg_0.b.x, ~23031i, 10000i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(199f, 100f, arg_0.a))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) * -624f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(221f * -972f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2237f))), var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -294f))), arg_0, arg_0);
    var var_2 = ~0i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, -624f, var_1.c, var_1.b), vec4<f32>(790f, 445f, var_1.c, var_1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.c, var_1.c, 298f)))), global2[_wgslsmith_index_u32(u_input.b.x, 21u)] == ~44503u)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-767f)), 205f));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    global1 = array<bool, 29>();
    var var_0 = 1i;
    return ~0u;
}

fn func_2() -> vec4<u32> {
    global3 = array<u32, 11>();
    var var_0 = global0[_wgslsmith_index_u32(func_4(Struct_2(Struct_1(-262f < _wgslsmith_f_op_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.d.x, 29u)], u_input.a), Struct_3(vec4<i32>(u_input.a.x, 6560i, 2147483647i, u_input.c.x)))), vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, 50552i), ~2147483647i, 2147483647i)), _wgslsmith_f_op_f32(-572f + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f * -160f) + _wgslsmith_div_f32(195f, 445f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1367f - -1000f), _wgslsmith_f_op_f32(ceil(-1000f)))), Struct_1(!(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 21u)], 11u)] == global3[_wgslsmith_index_u32(1u, 11u)]), vec3<i32>(1i, u_input.a.x | 1i, 1i)), Struct_1(true, ~_wgslsmith_mod_vec3_i32(u_input.c, u_input.c))), max(_wgslsmith_dot_vec4_i32(-vec4<i32>(45540i, 0i, -31255i, 2147483647i), ~vec4<i32>(u_input.c.x, u_input.e, -1i, 32121i)) ^ countOneBits(u_input.a.x), reverseBits(1i))), 18u)];
    var_0 = Struct_3(vec4<i32>(max(~(-11960i), 2147483647i), -3897i, -countOneBits(1i), -var_0.a.x));
    let var_1 = Struct_1(true, var_0.a.ywy);
    var var_2 = vec4<i32>(-9262i, -27839i, -(~33086i), ~(~var_0.a.x | ~var_0.a.x));
    return _wgslsmith_mod_vec4_u32(~(firstLeadingBit(u_input.b) & vec4<u32>(global2[_wgslsmith_index_u32(1233u, 21u)], 4294967295u, 0u, 47773u)) & vec4<u32>(~42828u, u_input.b.x & ~18999u, ~_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(64771u, 21u)]), func_1(var_0.a.xw, var_0.a.x, ~var_2.x).x), abs((_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 21u)], u_input.d.x, u_input.d.x, 9023u), vec4<u32>(41505u, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], 1u, 1u)) << (u_input.b % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(u_input.b), _wgslsmith_mult_vec4_u32(func_1(vec2<i32>(u_input.e, 36538i), 10090i, u_input.e), vec4<u32>(u_input.d.x, 1u, 21786u, global3[_wgslsmith_index_u32(u_input.d.x, 11u)])), func_2()), ~u_input.b);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1647f + -883f)));
    let var_2 = -u_input.a.x;
    var var_3 = ~abs(~1434u) >> (~(~(~24346u | func_2().x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-422f, 377f)), 480f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -193f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1223f, -516f), vec2<f32>(-2440f, 624f), true))) * vec2<f32>(1f, 1f))), 640f);
}

