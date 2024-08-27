struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<f32>(1101f, 953f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-371f, 377f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1000f, 362f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1242f, 1000f), vec2<bool>(true, false)), Struct_1(vec2<f32>(1117f, -1521f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-1114f, 679f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-1072f, 1019f), vec2<bool>(true, false)), Struct_1(vec2<f32>(1974f, -1000f), vec2<bool>(false, true)), Struct_1(vec2<f32>(1892f, 463f), vec2<bool>(false, true)), Struct_1(vec2<f32>(615f, -679f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-1000f, 1077f), vec2<bool>(true, false)), Struct_1(vec2<f32>(858f, -1244f), vec2<bool>(true, true)), Struct_1(vec2<f32>(1200f, -790f), vec2<bool>(false, true)), Struct_1(vec2<f32>(607f, -496f), vec2<bool>(true, false)), Struct_1(vec2<f32>(1278f, 110f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-2415f, -2252f), vec2<bool>(false, false)), Struct_1(vec2<f32>(2281f, -1697f), vec2<bool>(true, false)));

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: bool) -> vec2<bool> {
    var var_0 = true;
    var var_1 = global2.wzz;
    return vec2<bool>(true, true);
}

fn func_3() -> i32 {
    return global2.x;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: bool) -> Struct_4 {
    let var_0 = Struct_2(-vec3<i32>(countOneBits(arg_0.a.a.x), abs(arg_0.a.a.x), global2.x) & vec3<i32>(func_3(), 0i, ~_wgslsmith_dot_vec2_i32(global2.wy, global2.zw)), global1[_wgslsmith_index_u32(0u, 17u)], Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + _wgslsmith_f_op_f32(trunc(arg_0.a.b.a.x))), _wgslsmith_f_op_f32(-arg_0.a.d.a.x)), vec2<bool>(any(select(vec3<bool>(false, arg_0.a.c.b.x, false), vec3<bool>(false, true, arg_0.a.d.b.x), vec3<bool>(arg_2, arg_0.a.d.b.x, arg_0.a.c.b.x))), arg_2)), arg_0.a.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_0.a.d.a.x, arg_1.x), arg_1.zyy)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.zyz + vec3<f32>(var_0.d.a.x, arg_0.a.d.a.x, -145f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.wyz), _wgslsmith_f_op_vec3_f32(-arg_1.zyw), !select(vec3<bool>(true, arg_2, var_0.d.b.x), vec3<bool>(false, true, true), vec3<bool>(true, false, var_0.d.b.x))))));
    var var_2 = vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x << (u_input.a.x % 32u), firstLeadingBit(37400u)), abs(_wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(22930u, 1u)))) << (~(~4294967295u) % 32u), u_input.a.x, u_input.a.x);
    return Struct_4(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_3(Struct_2(firstLeadingBit(firstLeadingBit(vec3<i32>(12770i, global2.x, 38518i))), global1[_wgslsmith_index_u32(u_input.a.x >> (u_input.a.x % 32u), 17u)], Struct_1(vec2<f32>(694f, -903f), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), global1[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(688f, 555f, -1326f, -129f), vec4<f32>(147f, 168f, 1032f, 1000f), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, 593f, -1738f, -606f)))))), any(func_1(~vec2<i32>(global2.x, global2.x), _wgslsmith_div_u32(u_input.a.x, 16759u) ^ ~u_input.a.x, !all(vec4<bool>(false, true, true, false)))));
    var var_1 = -1159f;
    var var_2 = vec4<bool>(!select(false, !all(vec4<bool>(var_0.a.a.d.b.x, true, var_0.a.a.c.b.x, false)), any(vec3<bool>(var_0.a.a.b.b.x, true, var_0.a.a.c.b.x))), !(!func_2(func_2(var_0.a, vec4<f32>(-542f, 1302f, var_0.a.a.c.a.x, var_0.a.a.d.a.x), true).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2613f, -493f, var_0.a.a.b.a.x) * vec4<f32>(740f, var_0.a.a.d.a.x, var_0.a.a.c.a.x, var_0.a.a.d.a.x)), func_1(global2.wx, u_input.a.x, false).x).a.a.b.b.x), true, true);
    let var_3 = Struct_2(_wgslsmith_add_vec3_i32(global2.wyw, var_0.a.a.a), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(4294967295u, 23737u)), 17u)], Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.c.a.x, var_0.a.a.d.a.x) * var_0.a.a.d.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.a.c.a.x)))), var_0.a.a.b.b), Struct_1(var_0.a.a.c.a, !(!var_2.yz)));
    let var_4 = Struct_4(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-vec4<i32>(2147483647i, var_3.a.x, -7165i, global2.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-15639i, 1820i, global2.x, 1790i), vec4<i32>(-2147483647i, -23090i, -1i, -19407i), vec4<i32>(-2147483647i, 0i, var_0.a.a.a.x, var_3.a.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a.x, max(1i, -27941i), ~var_0.a.a.a.x, -2147483647i), _wgslsmith_mod_vec4_i32(-vec4<i32>(-29466i, global2.x, var_0.a.a.a.x, 37718i), ~vec4<i32>(var_3.a.x, 1i, 18747i, var_0.a.a.a.x)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-4760i, var_0.a.a.a.x, 59844i, var_3.a.x), vec4<i32>(-4271i, -2147483647i, global2.x, global2.x)), firstTrailingBit(vec4<i32>(var_3.a.x, -18242i, var_4.a.a.a.x, var_4.a.a.a.x)), -vec4<i32>(-1i, global2.x, 4275i, 0i))), select(var_0.a.a.d.b.x, reverseBits(u_input.a.x) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.xz), !all(var_0.a.a.b.b))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.d.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.a.b.a.x + 1897f), _wgslsmith_f_op_f32(-var_4.a.a.c.a.x))), _wgslsmith_f_op_f32(sign(var_4.a.a.c.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(842f))))))), 1u);
}

