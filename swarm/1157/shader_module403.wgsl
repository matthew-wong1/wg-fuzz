struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

var<private> global1: vec4<i32> = vec4<i32>(11788i, 53272i, 2147483647i, 39250i);

var<private> global2: Struct_3;

var<private> global3: array<f32, 19> = array<f32, 19>(887f, 1239f, -400f, -230f, -990f, -498f, 184f, 1316f, -449f, -2507f, -1000f, 231f, -1938f, 124f, -1811f, -115f, 1876f, -234f, -1481f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<u32> {
    global1 = -_wgslsmith_mult_vec4_i32(max(abs(vec4<i32>(global1.x, 24383i, global1.x, 1i) & vec4<i32>(5320i, -1i, 38704i, 39339i)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, global1.x, 2147483647i, global1.x), vec4<i32>(global1.x, global1.x, 64819i, 8255i), global2.b), ~vec4<i32>(global1.x, global1.x, global1.x, global1.x))), min(_wgslsmith_add_vec4_i32(vec4<i32>(-19546i, 0i, 2147483647i, -57055i), ~vec4<i32>(global1.x, global1.x, global1.x, global1.x)), -(~vec4<i32>(-30645i, -21567i, global1.x, global1.x))));
    global2 = Struct_3(_wgslsmith_sub_vec3_u32(global2.a, global2.a & global2.a), global2.b);
    global0 = array<vec3<i32>, 13>();
    global2 = Struct_3(~global2.a, !global2.b);
    let var_0 = select(_wgslsmith_div_vec2_u32(~(~(~u_input.a)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.x, 30630u) & vec2<u32>(u_input.a.x, 75838u), ~u_input.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.a.x), global2.a.yx), 47090u), global2.b.x);
    return min(firstTrailingBit(~(~global2.a)), abs(_wgslsmith_div_vec3_u32(~(~global2.a), global2.a)));
}

fn func_2() -> vec4<i32> {
    var var_0 = vec4<u32>(1u, 32015u, _wgslsmith_add_u32(~(~(~u_input.a.x)), global2.a.x), _wgslsmith_dot_vec3_u32(global2.a, func_3()));
    global1 = -countOneBits(-vec4<i32>(~2147483647i, global1.x, _wgslsmith_clamp_i32(19511i, global1.x, global1.x), global1.x));
    global2 = Struct_3(var_0.yxy, !global2.b);
    let var_1 = 25671u;
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-35488i, 2147483647i), global1.wz), _wgslsmith_div_i32(global1.x, global1.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -40376i, 2147483647i, 10242i), vec4<i32>(global1.x, global1.x, global1.x, -2147483647i)), _wgslsmith_clamp_i32(global1.x, 2147483647i, 2147483647i)), -global1.x, abs(5335i)), -(vec4<i32>(-1i) * -vec4<i32>(global1.x, -27573i, global1.x, 1i))) >= ~(-37531i);
    return firstTrailingBit((-(~vec4<i32>(global1.x, 54088i, global1.x, 1i)) ^ -firstLeadingBit(vec4<i32>(0i, global1.x, global1.x, global1.x))) | countOneBits(vec4<i32>(abs(648i), -1i, reverseBits(2147483647i), _wgslsmith_div_i32(0i, global1.x))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = select(_wgslsmith_sub_vec4_i32(-vec4<i32>(global1.x, 25501i, 15681i << (global2.a.x % 32u), global1.x), ~(~max(vec4<i32>(-1i, -27293i, global1.x, global1.x), vec4<i32>(global1.x, -1i, -2147483647i, -20788i)))), -func_2(), !vec4<bool>(global2.b.x, true, true, true));
    let var_1 = global2.b.x;
    var var_2 = Struct_4(Struct_2(_wgslsmith_mult_i32(global1.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.x, var_0.x), i32(-1i) * -1i)), global2.b, Struct_1(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a.x, global2.a.x)), 13u)], false, var_0.yxw, true), global2.b.yx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-376f, global3[_wgslsmith_index_u32(global2.a.x, 19u)], arg_0.x), arg_0), arg_0)));
    global3 = array<f32, 19>();
    let var_3 = vec3<i32>(~(i32(-1i) * -42706i), firstTrailingBit(~(~(-2147483647i))), var_2.a.c.a.x & -reverseBits(firstTrailingBit(-52505i)));
    return ~_wgslsmith_dot_vec3_u32(~vec3<u32>(~global2.a.x, global2.a.x, reverseBits(u_input.a.x)), _wgslsmith_clamp_vec3_u32(select(abs(vec3<u32>(4294967295u, 34632u, global2.a.x)), vec3<u32>(global2.a.x, global2.a.x, global2.a.x), vec3<bool>(var_2.a.b.x, true, global2.b.x)), vec3<u32>(u_input.a.x, u_input.a.x, global2.a.x) >> (global2.a % vec3<u32>(32u)), global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(~global2.a, vec4<bool>(global2.b.x, all(!global2.b.zyx) && all(select(vec3<bool>(true, global2.b.x, global2.b.x), global2.b.zwy, global2.b.xyx)), false, global2.b.x));
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(41324u, 19u)], -1369f, global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2143f, global3[_wgslsmith_index_u32(1u, 19u)], -280f, global3[_wgslsmith_index_u32(72142u, 19u)])))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(global2.a.x, 19u)])), _wgslsmith_div_f32(-694f, -820f), -391f, _wgslsmith_f_op_f32(sign(-178f))))));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, global2.a.x | u_input.a.x), func_1(var_0.a.wxw)), 1u);
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), 225f, _wgslsmith_f_op_f32(trunc(-969f)), global3[_wgslsmith_index_u32(firstTrailingBit(global2.a.x), 19u)])), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(215f, var_0.a.x, global3[_wgslsmith_index_u32(global2.a.x, 19u)], 665f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 430f, 174f, var_0.a.x), vec4<f32>(-183f, global3[_wgslsmith_index_u32(global2.a.x, 19u)], -364f, 617f), global2.b.x)))))), global3[_wgslsmith_index_u32(global2.a.x, 19u)] >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-2254f)))))));
    var var_2 = Struct_2(global1.x, global2.b, Struct_1(func_2().xxw, global2.b.x, vec3<i32>(33107i, 0i, abs(global1.x)), true), select(vec2<bool>(true, global2.b.x && any(global2.b.xz)), vec2<bool>(global2.b.x, true), select(global2.b.yz, select(vec2<bool>(false, true), select(global2.b.zy, global2.b.yw, vec2<bool>(false, false)), select(global2.b.yw, vec2<bool>(false, global2.b.x), global2.b.x)), select(vec2<bool>(false, global2.b.x), select(global2.b.wx, vec2<bool>(global2.b.x, false), global2.b.x), !global2.b.yz))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.wx, var_0.a.zz, _wgslsmith_add_vec2_u32(global2.a.zz, ~(~vec2<u32>(u_input.a.x, 14984u) << (~u_input.a % vec2<u32>(32u)))));
}

