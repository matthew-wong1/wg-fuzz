struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec4<u32>(48675u, 4294967295u, 0u, 1u), Struct_1(vec2<bool>(true, false), vec4<u32>(0u, 54367u, 3733u, 9770u))), Struct_2(vec4<u32>(0u, 866u, 21096u, 24128u), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 1u, 1u, 4294967295u))), Struct_2(vec4<u32>(41501u, 4294967295u, 0u, 0u), Struct_1(vec2<bool>(true, false), vec4<u32>(1u, 1u, 8205u, 2398u))), Struct_2(vec4<u32>(12105u, 1u, 1u, 18242u), Struct_1(vec2<bool>(true, false), vec4<u32>(119392u, 4294967295u, 14546u, 1u))), Struct_2(vec4<u32>(18500u, 4294967295u, 1u, 45387u), Struct_1(vec2<bool>(false, true), vec4<u32>(12024u, 1u, 1u, 40967u))));

var<private> global1: i32 = 1i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> bool {
    var var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(reverseBits(u_input.a.x), firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, 0i))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b), vec4<i32>(17906i, 1i, u_input.b, u_input.a.x)), ~vec4<i32>(17714i, -69652i, u_input.b, u_input.b)), firstLeadingBit(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 1i))), -min(u_input.b, 1i), abs(u_input.b ^ _wgslsmith_clamp_i32(u_input.a.x, 0i, u_input.a.x))));
    var var_1 = vec3<bool>(select(!any(select(vec4<bool>(arg_0.a.x, true, arg_1.a.x, false), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true), false)), true, _wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(abs(1000f))) <= _wgslsmith_f_op_f32(-667f * arg_0.b.x)), arg_0.a.x, true);
    var var_2 = vec2<i32>(var_0.x, reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.b, -2147483647i), vec4<i32>(var_0.x, u_input.b, 0i, var_0.x)), u_input.b)) | (i32(-1i) * -(76117i >> (arg_3.x % 32u))));
    var var_3 = arg_0;
    var_0 = ~vec4<i32>(var_0.x, _wgslsmith_dot_vec2_i32(min(select(vec2<i32>(u_input.a.x, var_0.x), vec2<i32>(0i, u_input.a.x), arg_1.a.x), -u_input.a), u_input.a), _wgslsmith_div_i32(abs(0i | var_0.x), _wgslsmith_mod_i32(0i, -var_0.x)), ~reverseBits(-var_2.x));
    return any(select(vec3<bool>(true, !any(vec2<bool>(false, var_1.x)), all(!vec3<bool>(true, true, arg_0.a.x))), select(var_3.a.yxx, arg_0.a.wyz, !(!var_3.a.wwx)), !select(select(var_3.a.yyw, arg_0.a.xwz, arg_0.a.zyy), !var_3.a.zzz, select(vec3<bool>(true, arg_0.a.x, var_1.x), vec3<bool>(var_3.a.x, arg_0.a.x, true), var_1.x))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    return Struct_3(!select(!select(vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, true), vec4<bool>(false, true, var_0.b.a.x, var_0.b.a.x)), vec4<bool>(1000f <= arg_2.x, any(vec3<bool>(true, var_0.b.a.x, true)), var_0.b.a.x, var_0.b.a.x), func_3(Struct_3(vec4<bool>(true, false, true, var_0.b.a.x), vec4<f32>(arg_2.x, -317f, arg_2.x, arg_2.x)), var_0.b, 1000f, u_input.e.wyy)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-305f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(342f - arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(120f * -2268f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, -537f, arg_2.x, 1314f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, arg_2.x, arg_2.x, 861f))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + -608f)))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_2, 5>();
    var var_0 = ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(44317u, 4294967295u, u_input.d.x), vec3<u32>(1u, 34353u, 4294967295u)), _wgslsmith_div_u32(~1u, _wgslsmith_mult_u32(0u, arg_2.b.b.x)), abs(u_input.d.x) >> (~u_input.d.x % 32u), ~_wgslsmith_mult_u32(u_input.e.x, 4294967295u)));
    var_0 = max(u_input.e, vec4<u32>(~var_0.x ^ u_input.e.x, _wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(~6489u, ~4294967295u, select(var_0.x, 49563u, arg_2.b.a.x), 79924u)), var_0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(u_input.d.x, arg_2.a.x, u_input.d.x)), 56209u)));
    global0 = array<Struct_2, 5>();
    var var_1 = func_2(~countOneBits(~(~(-45344i))), ~(~(~arg_2.a.xwy)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-159f, 1456f))), -1347f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1975f, arg_0))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
    return _wgslsmith_f_op_f32(sign(-875f));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = u_input.e.x;
    let var_2 = Struct_1(!func_2(_wgslsmith_mod_i32(u_input.b, u_input.b) ^ _wgslsmith_div_i32(u_input.b, u_input.b), (vec3<u32>(4294967295u, 4294967295u, arg_1) >> (u_input.e.zzw % vec3<u32>(32u))) >> (~vec3<u32>(4294967295u, 19337u, 7834u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(2036f, 268f) * vec2<f32>(var_0, var_0))))).a.zx, u_input.e);
    var var_3 = u_input.c.x;
    global0 = array<Struct_2, 5>();
    return Struct_3(!vec4<bool>(_wgslsmith_mult_i32(1215i, 70839i) < min(u_input.a.x, u_input.a.x), true, any(vec3<bool>(false, var_2.a.x, true)), !func_3(Struct_3(vec4<bool>(var_2.a.x, true, false, true), vec4<f32>(-353f, arg_0.x, arg_0.x, arg_0.x)), Struct_1(vec2<bool>(var_2.a.x, false), vec4<u32>(arg_1, u_input.c.x, var_2.b.x, 22046u)), 438f, var_2.b.zxw)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(459f, var_0))) - arg_0.x), 393f, -652f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-739f + arg_0.x), 563f) + 917f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x;
    var var_1 = func_4(vec4<f32>(1000f, _wgslsmith_f_op_f32(-1567f + _wgslsmith_f_op_f32(-1453f + _wgslsmith_f_op_f32(f32(-1f) * -2081f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(1000f, u_input.a.x, Struct_2(u_input.e, Struct_1(vec2<bool>(true, true), u_input.e)))), 1614f), -443f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1761f)), 1f))), var_0);
    var var_2 = u_input.a.x;
    var_2 = i32(-1i) * -1i;
    var var_3 = false;
    var var_4 = true;
    var var_5 = var_1.b;
    global0 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(countOneBits(~u_input.e.xx), u_input.e.yz), _wgslsmith_mult_u32(0u, ~_wgslsmith_mod_u32(u_input.d.x, u_input.e.x))), vec4<u32>(16895u, reverseBits(~2847u) & (_wgslsmith_sub_u32(18572u, 1u) & u_input.e.x), 4294967295u, ~u_input.e.x), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e.yxy, u_input.e.zzz), vec3<u32>(var_0, 4294967295u, var_0)), u_input.e.x), ~_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 1u), _wgslsmith_clamp_u32(u_input.e.x, 32719u, var_0))), vec2<i32>(46022i, -select(-u_input.a.x, u_input.b, func_2(u_input.b, u_input.e.zzz, var_1.b.zx).a.x)));
}

