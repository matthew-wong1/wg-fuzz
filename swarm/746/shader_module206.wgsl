struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, false, false, true, false, false, true, true, true, true, true, true, false, false, false, true, false);

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<i32, 22>;

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec4<bool>(true, false, false, false), vec4<i32>(0i, 18221i, 0i, -35156i)), Struct_3(vec4<bool>(true, false, true, true), vec4<i32>(1i, 2147483647i, -23393i, 2147483647i)), Struct_3(vec4<bool>(false, true, false, false), vec4<i32>(4323i, 2147483647i, 1i, 7569i)), Struct_3(vec4<bool>(true, false, true, false), vec4<i32>(48887i, 0i, -1i, -1i)), Struct_3(vec4<bool>(false, true, false, false), vec4<i32>(1i, -34687i, 47505i, 1i)), Struct_3(vec4<bool>(false, false, true, true), vec4<i32>(i32(-2147483648), 33395i, 47561i, -1i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<i32> {
    global1 = array<Struct_3, 32>();
    var var_0 = Struct_3(!vec4<bool>(false, !any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 18u)] != true), abs(firstTrailingBit(~max(vec4<i32>(global2[_wgslsmith_index_u32(1u, 22u)], -2147483647i, -28802i, global2[_wgslsmith_index_u32(0u, 22u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 20798i, -2147483647i, global2[_wgslsmith_index_u32(12241u, 22u)])))));
    global2 = array<i32, 22>();
    let var_1 = Struct_5(Struct_3(var_0.a, var_0.b));
    var var_2 = vec2<f32>(1410f, -327f);
    return vec3<i32>(var_0.b.x | -countOneBits(48607i), _wgslsmith_mod_i32(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 40647i)), abs(var_0.b.x) | firstLeadingBit(var_0.b.x)), global2[_wgslsmith_index_u32(min(~u_input.a.x, 1u), 22u)]), -(~(-_wgslsmith_dot_vec2_i32(var_1.a.b.ww, var_1.a.b.ww))));
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_3, 32>();
    global1 = array<Struct_3, 32>();
    var var_0 = _wgslsmith_div_i32(abs(min(~global2[_wgslsmith_index_u32(4934u, 22u)], _wgslsmith_dot_vec3_i32(func_3(), func_3()))), func_3().x);
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(43370u, 22u)], global2[_wgslsmith_index_u32(38722u, 22u)], -2147483647i, 34501i), _wgslsmith_sub_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 8134i, 1i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], -2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 22u)], -2147483647i))), 12652i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)] >> (u_input.a.x % 32u), ~0i) >> (u_input.a.x % 32u), 40922i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(46337u, 22u)], 2147483647i, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 22u)] | -1i));
    var var_1 = u_input.a.x;
    return global3[_wgslsmith_index_u32(u_input.a.x, 6u)];
}

fn func_1() -> vec4<bool> {
    global1 = array<Struct_3, 32>();
    global2 = array<i32, 22>();
    global1 = array<Struct_3, 32>();
    var var_0 = Struct_5(func_2());
    let var_1 = Struct_2(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], i32(-1i) * -830i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1387f, 1000f), -228f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1580f) * _wgslsmith_f_op_f32(max(253f, 338f)))), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u, u_input.a.x, 4294967295u), u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(1572f - _wgslsmith_f_op_f32(209f * -1109f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1242f)) * -105f)), all(var_0.a.a)), !(any(vec3<bool>(var_0.a.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true)) == true), Struct_1(-684f, 17377u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1348f))))), global0[_wgslsmith_index_u32(u_input.a.x, 18u)]));
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    let var_0 = vec4<i32>(-2147483647i, _wgslsmith_mult_i32(~(~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 22u)], -2147483647i)), global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), -2147483647i, global2[_wgslsmith_index_u32(1u, 22u)]);
    var var_1 = Struct_4(!func_1());
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(64142u, u_input.a.x), select(vec2<u32>(max(88810u, u_input.a.x), 78049u) | abs(u_input.a.zz), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), max(vec2<u32>(u_input.a.x, 3081u), u_input.a.xz)) >> (vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 21021u), u_input.a.x) % vec2<u32>(32u)), true), ~vec2<u32>(u_input.a.x, u_input.a.x));
    var var_3 = global3[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(~u_input.a.x, select(var_2.x, 0u, var_1.a.x)) | var_2.x)), 6u)];
    let var_4 = Struct_4(vec4<bool>(true, var_3.a.x, var_1.a.x, !var_3.a.x));
    let var_5 = !vec2<bool>(!var_3.a.x, global0[_wgslsmith_index_u32(1u, 18u)] && (min(2147483647i, 2147483647i) != var_3.b.x));
    var var_6 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-153f)), 209f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - -778f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -682f, true)))), _wgslsmith_add_vec3_i32(min(vec3<i32>(global2[_wgslsmith_index_u32(1u, 22u)] >> (var_2.x % 32u), -2147483647i ^ var_0.x, ~(-2147483647i)), -vec3<i32>(var_0.x, 1i, global2[_wgslsmith_index_u32(0u, 22u)]) ^ vec3<i32>(34671i, var_3.b.x, var_3.b.x)), select(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_0.x), vec3<i32>(-2147483647i, 16591i, var_0.x), var_0.wzx), vec3<i32>(var_3.b.x, -799i, -1i)), ~(vec3<i32>(var_0.x, var_3.b.x, -1i) | vec3<i32>(var_0.x, -1i, 11417i)), var_5.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1201f, 340f) * _wgslsmith_f_op_f32(trunc(-1587f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1749f), _wgslsmith_f_op_f32(round(1555f))))));
}

