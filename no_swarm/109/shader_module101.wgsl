struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec3<f32> {
    global2 = array<Struct_2, 23>();
    global1 = vec4<bool>(false, arg_1, global1.x || arg_0.x, arg_0.x);
    global0 = Struct_2(true, global0.b, global0.c);
    var var_0 = firstLeadingBit(7261u >> (global0.b.a.x % 32u)) << (~1u % 32u);
    let var_1 = i32(-1i) * -48834i;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-245f - 266f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(342f, _wgslsmith_f_op_f32(860f + 730f))), 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-247f, -211f, -789f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1069f, -674f, -1762f)))))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = global0.b;
    var var_1 = ~firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -2147483647i))), abs(countOneBits(vec4<i32>(-38615i, u_input.b, u_input.b, 28771i)))));
    let var_2 = Struct_3(global0.b);
    let var_3 = vec3<bool>(true, true, true);
    global0 = global2[_wgslsmith_index_u32(var_2.a.a.x, 23u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(!vec3<bool>(var_3.x, false, arg_0.a), global1.x)).x - -661f)));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(arg_1.xyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -442f, arg_1.x) * arg_1.zyx)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(arg_1.zxw)), _wgslsmith_f_op_vec3_f32(arg_1.zzx + vec3<f32>(1000f, -232f, 259f)), !global1.zxw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(global0.a, global0.a, global1.x), true)) - vec3<f32>(arg_1.x, 1846f, arg_1.x))))));
    var var_1 = Struct_2(select((_wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(global0.c.b, 23u)], global1.x, global0.a))) || true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2216f + arg_1.x)) > _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1000f + arg_1.x)), true | global1.x), global0.c, Struct_1(global0.c.a, ~(~0u) >> (1u % 32u)));
    var var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, u_input.a.x), 23u)];
    var var_3 = (abs(u_input.b) << (30602u % 32u)) & -(~reverseBits(u_input.b));
    var var_4 = _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(-arg_1.x))));
    return global2[_wgslsmith_index_u32(var_1.b.a.x, 23u)];
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<u32>) -> bool {
    global1 = !vec4<bool>(true, func_1(2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-297f, 1000f, -1781f, 654f))).a, true, global0.a & true);
    global2 = array<Struct_2, 23>();
    let var_0 = arg_1;
    var var_1 = 1247f;
    let var_2 = vec4<bool>(any(!vec2<bool>(func_1(arg_0, vec4<f32>(-1000f, -885f, 1000f, -905f)).a, var_0.a)), arg_1.a, var_0.a, global0.a | (!select(false, global1.x, true) || any(select(vec4<bool>(var_0.a, global0.a, global0.a, true), vec4<bool>(false, var_0.a, global1.x, global0.a), true))));
    return !any(global1.xzy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(vec4<bool>(func_4(51896i, func_1(-19620i, vec4<f32>(274f, -1825f, 1150f, -403f)), i32(-1i) * -28784i, _wgslsmith_div_vec4_u32(vec4<u32>(global0.b.a.x, 1u, u_input.a.x, 83002u), vec4<u32>(14117u, global0.b.a.x, 41951u, u_input.a.x))), !(!global1.x), all(select(vec4<bool>(global1.x, false, true, false), vec4<bool>(true, global1.x, global0.a, true), global0.a)), global0.a || true), vec4<bool>(global0.a, true, global0.a, global0.a), global0.a);
    var var_0 = Struct_3(func_1(u_input.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1931f, 610f, 2109f, -722f), vec4<f32>(-1449f, 1204f, 990f, 542f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-505f, -127f, -1391f, 654f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(416f, 2139f, -1070f, -1000f) + vec4<f32>(-437f, 151f, -184f, 2253f))))))).c);
    global2 = array<Struct_2, 23>();
    var var_1 = -_wgslsmith_mult_vec3_i32(max(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.b, -13364i)), vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(33837i, u_input.b, -1i)), ~vec3<i32>(-21433i, -4084i, u_input.b)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(var_0.a.a.x, 0u, 43091u) % vec3<u32>(32u)))));
    var var_2 = global2[_wgslsmith_index_u32(select(37164u, var_0.a.a.x, true), 23u)];
    let var_3 = vec2<u32>(~reverseBits(~1u), 4294967295u);
    var_0 = Struct_3(func_1(_wgslsmith_mult_i32(~3039i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -29675i), vec2<i32>(var_1.x, u_input.b)), 2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, _wgslsmith_f_op_f32(-398f + 1321f), _wgslsmith_f_op_f32(round(-648f)), _wgslsmith_f_op_f32(-996f * -916f)))).c);
    var_2 = Struct_2(false, Struct_1(var_0.a.a, _wgslsmith_dot_vec2_u32(var_0.a.a.wy, vec2<u32>(_wgslsmith_mod_u32(61384u, 4294967295u), 20341u))), func_1(var_1.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(144f, -539f, 1234f, 969f) * vec4<f32>(2179f, 1000f, -544f, -2067f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-251f, -719f, -767f, -1000f) - vec4<f32>(-1236f, -121f, 518f, 892f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1951f, 254f, -958f, 1104f), vec4<f32>(905f, 1443f, 1171f, 305f)))), vec4<bool>(true, all(vec4<bool>(false, global0.a, false, false)), true, any(vec4<bool>(true, global0.a, false, var_2.a)))))).c);
    var var_4 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1734f, -191f), vec2<f32>(304f, -532f))), vec2<f32>(-815f, -1179f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-963f, -408f) + vec2<f32>(630f, -1362f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 738f) - vec2<f32>(-553f, 732f))))));
}

