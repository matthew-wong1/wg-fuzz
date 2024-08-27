struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(20523u, 1u);

var<private> global1: array<i32, 4> = array<i32, 4>(-20817i, -33547i, 15320i, -36744i);

var<private> global2: bool = true;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = Struct_5(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 37096i), vec3<i32>(u_input.a, u_input.a, u_input.a)), 38847i, ~_wgslsmith_mod_i32(u_input.a, 2147483647i), ~(-2314i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1452f, -607f)))) * _wgslsmith_f_op_f32(exp2(1f))))), !all(vec3<bool>(global0.x > 0u, false, true)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 23693i, global1[_wgslsmith_index_u32(global0.x, 4u)] << (0u % 32u)), vec3<i32>(~(-1i), min(global1[_wgslsmith_index_u32(global0.x, 4u)], -9987i), abs(u_input.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f + var_0.b))));
    var var_2 = vec2<bool>(!(!var_0.c), any(select(vec2<bool>(true, true), vec2<bool>(false, var_0.c), select(select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, false), var_0.c), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, var_0.c)), any(vec3<bool>(false, var_0.c, var_0.c))))));
    let var_3 = false;
    let var_4 = Struct_2(min(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, ~global0.x, ~global0.x), ~(vec4<u32>(global0.x, 58089u, global0.x, global0.x) | vec4<u32>(1u, global0.x, 32063u, 1u))), vec4<u32>(global0.x, ~global0.x, 3920u, min(4294967295u, 1u >> (global0.x % 32u)))), select(!(_wgslsmith_f_op_f32(var_1.a * -2191f) <= _wgslsmith_f_op_f32(-var_0.b)), var_3 || (var_0.b > _wgslsmith_f_op_f32(min(711f, -943f))), select(all(select(vec2<bool>(true, var_0.c), vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, false))), any(!vec2<bool>(var_2.x, true)), true)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1933f, var_1.a)), 810f, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(floor(523f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1068f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1358f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) + -786f), -653f, var_1.a))));
    return !(-268f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-397f - var_0.b))))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(123f, 365f))))))));
    global2 = func_3();
    global1 = array<i32, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1865f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(-1638f + 1330f)))));
    var var_2 = -abs(abs(vec2<i32>(firstTrailingBit(u_input.a), ~52409i)));
    return _wgslsmith_div_i32(~(-16791i), u_input.a);
}

fn func_1() -> vec2<u32> {
    global1 = array<i32, 4>();
    global2 = (-func_2() >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, global0.x), vec2<u32>(global0.x, global0.x)), firstTrailingBit(vec2<u32>(global0.x, global0.x))) % 32u)) > _wgslsmith_dot_vec2_i32((vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a) | max(vec2<i32>(global1[_wgslsmith_index_u32(1u, 4u)], -2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(59217u, 4u)], 2147483647i))) | _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a, 1i), vec2<i32>(-2147483647i, -2147483647i) | vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(22571u, 4u)]), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(global0.x, 4u)]) & vec2<i32>(u_input.a, -1i)), -firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 4u)], 31004i), vec2<i32>(-29597i, global1[_wgslsmith_index_u32(global0.x, 4u)]))));
    let var_0 = Struct_4(Struct_2(abs(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.x, global0.x, global0.x, global0.x)), vec4<u32>(global0.x, global0.x, global0.x, 102118u))), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-732f, 676f, 1791f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1395f, -652f, -464f, 191f), _wgslsmith_div_vec4_f32(vec4<f32>(-282f, -1831f, -2409f, -1264f), vec4<f32>(1389f, -1432f, -208f, 1000f)), any(vec2<bool>(true, true)))))), Struct_1(959f), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-926f * 1245f), -215f, global1[_wgslsmith_index_u32(35157u, 4u)] > u_input.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(557f - -1196f), -195f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1577f)), _wgslsmith_f_op_f32(f32(-1f) * -1362f)))));
    global0 = _wgslsmith_sub_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, 1u), var_0.a.a.zz)), ~vec2<u32>(4294967295u, var_0.a.a.x) | ~(~vec2<u32>(54152u, global0.x))) | _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(select(var_0.a.a.xx, max(var_0.a.a.wy, vec2<u32>(50948u, 1u)), false), ~(var_0.a.a.zx | var_0.a.a.wy)), _wgslsmith_div_vec2_u32(vec2<u32>(~var_0.a.a.x, global0.x), (var_0.a.a.zz & var_0.a.a.wy) & var_0.a.a.xy));
    global2 = var_0.a.b;
    return select(vec2<u32>(~0u, max(select(~16636u, ~global0.x, var_0.c.a <= var_0.d), ~abs(var_0.a.a.x))), ~(~_wgslsmith_sub_vec2_u32(var_0.a.a.zw, var_0.a.a.yz)), var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1056u, 4294967295u) & func_1()), reverseBits(firstTrailingBit(~vec2<u32>(global0.x, 26791u)))), vec2<u32>((3734u & (global0.x << (42649u % 32u))) >> (63494u % 32u), global0.x));
    let var_0 = true;
    let var_1 = var_0;
    var var_2 = !(!vec4<bool>(func_3(), all(select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, var_0), false)), var_1, var_0 && all(vec2<bool>(var_1, var_1))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(223f, 502f, 926f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, 2097f, 663f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1267f, 1381f, 208f), vec3<f32>(-213f, 1000f, -1024f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(219f, 627f, -162f), vec3<f32>(174f, -1213f, 222f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1277f, 1766f, -2181f), vec3<f32>(-503f, 1000f, -952f)))))));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(firstLeadingBit(vec2<u32>(global0.x, global0.x))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, global0.x), 4294967295u), global0.x >> (~global0.x % 32u))), global0.x);
    let var_5 = Struct_1(-638f);
    let var_6 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, var_3.x, 375f, 1000f))))))));
    var var_7 = countOneBits(global1[_wgslsmith_index_u32(3356u, 4u)] & max(_wgslsmith_sub_i32(~1i, -61604i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-35404i, u_input.a, 39756i, u_input.a), vec4<i32>(45121i, 2147483647i, -1i, global1[_wgslsmith_index_u32(var_4.x, 4u)])), max(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(var_4.x, 4u)], -36070i, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(var_4.x, 4u)], 15010i, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

