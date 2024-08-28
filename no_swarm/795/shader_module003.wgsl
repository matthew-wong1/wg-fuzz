struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<f32>(-115f, -748f, 1017f, 1126f), 32909u), Struct_1(vec4<f32>(1200f, 805f, -361f, -700f), 0u), Struct_1(vec4<f32>(-523f, 223f, 441f, 1160f), 4294967295u));

var<private> global1: array<Struct_1, 11>;

var<private> global2: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<f32>(1490f, -241f, 1000f, 284f), 1u), Struct_1(vec4<f32>(-130f, 2084f, -1000f, -657f), 83897u), Struct_1(vec4<f32>(-1000f, 750f, -556f, 1112f), 6903u), Struct_1(vec4<f32>(-1574f, 382f, 669f, 662f), 15757u), Struct_1(vec4<f32>(517f, 1085f, 178f, -922f), 31233u), Struct_1(vec4<f32>(-1692f, 248f, -2699f, -474f), 1u), Struct_1(vec4<f32>(511f, -500f, -281f, 1000f), 0u), Struct_1(vec4<f32>(1201f, -770f, 1107f, -758f), 2678u), Struct_1(vec4<f32>(1740f, -152f, 1017f, -1714f), 1u), Struct_1(vec4<f32>(449f, 521f, 137f, -1401f), 0u), Struct_1(vec4<f32>(641f, -1000f, -404f, 1469f), 4842u), Struct_1(vec4<f32>(1975f, 122f, 1054f, 585f), 1u), Struct_1(vec4<f32>(1566f, 1234f, -305f, 1000f), 15359u), Struct_1(vec4<f32>(519f, 286f, 1015f, 1222f), 4294967295u), Struct_1(vec4<f32>(2005f, 1000f, 2682f, -659f), 1u), Struct_1(vec4<f32>(223f, 1773f, 132f, 618f), 1u), Struct_1(vec4<f32>(413f, 161f, 385f, -1273f), 4294967295u), Struct_1(vec4<f32>(-213f, 347f, -813f, 431f), 1u), Struct_1(vec4<f32>(-519f, -398f, -306f, -394f), 0u), Struct_1(vec4<f32>(-233f, 1187f, 146f, 323f), 6633u), Struct_1(vec4<f32>(-230f, 1300f, -1024f, 924f), 0u), Struct_1(vec4<f32>(1000f, 703f, 1078f, -1139f), 28173u), Struct_1(vec4<f32>(309f, 731f, -294f, -127f), 18013u), Struct_1(vec4<f32>(1686f, -1233f, 1000f, -502f), 25415u), Struct_1(vec4<f32>(-243f, 1000f, 1818f, 219f), 23643u), Struct_1(vec4<f32>(-1576f, -1261f, -328f, -1605f), 4294967295u), Struct_1(vec4<f32>(-337f, 646f, 263f, -834f), 1u), Struct_1(vec4<f32>(889f, -1600f, -1172f, 1000f), 109754u), Struct_1(vec4<f32>(908f, -217f, 574f, 1526f), 11966u), Struct_1(vec4<f32>(-1466f, 724f, -1000f, -2794f), 76833u), Struct_1(vec4<f32>(-243f, -1184f, -1000f, -395f), 1u));

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<i32>(1i, ~u_input.d.x, -37280i);
    var var_1 = arg_3.b;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1061f, -2166f)) + _wgslsmith_f_op_vec2_f32(-arg_3.a.yz)) - arg_1.b.a.yy), arg_1.b.a.xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1244f, -1030f))), vec2<f32>(arg_3.a.x, -425f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.zz) * _wgslsmith_f_op_vec2_f32(arg_3.a.yz + vec2<f32>(arg_3.a.x, arg_3.a.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1.b.a.x)))));
    let var_3 = Struct_2(1u, global3[_wgslsmith_index_u32(4294967295u, 31u)], !select(!vec4<bool>(false, arg_2.x, true, arg_1.c.x), vec4<bool>(arg_1.c.x & arg_2.x, global4.x, false & arg_2.x, !global4.x), !all(vec3<bool>(true, global4.x, true))));
    var var_4 = Struct_2(arg_1.a, Struct_1(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-913f * _wgslsmith_f_op_f32(f32(-1f) * -965f)), -116f, var_2.x), ~u_input.a.x), select(!select(vec4<bool>(arg_2.x, true, true, global4.x), vec4<bool>(var_3.c.x, var_3.c.x, global4.x, true), select(vec4<bool>(arg_2.x, false, true, true), var_3.c, vec4<bool>(false, arg_2.x, true, global4.x))), select(select(vec4<bool>(true, true, false, arg_2.x), !vec4<bool>(arg_1.c.x, var_3.c.x, false, arg_1.c.x), select(vec4<bool>(true, arg_2.x, true, false), var_3.c, var_3.c)), select(vec4<bool>(arg_2.x, var_3.c.x, var_3.c.x, true), select(vec4<bool>(var_3.c.x, false, var_3.c.x, false), var_3.c, vec4<bool>(arg_1.c.x, var_3.c.x, var_3.c.x, global4.x)), arg_1.c.x), !any(global2[_wgslsmith_index_u32(var_3.a, 11u)])), arg_1.c));
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(~1662u, ~33125u), abs(u_input.c & ~_wgslsmith_dot_vec2_u32(u_input.e, u_input.a.zx)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = ~(~func_3(u_input.b.ywz, Struct_2(1u, global3[_wgslsmith_index_u32(33787u, 31u)], vec4<bool>(true, global4.x, true, global4.x)), !global2[_wgslsmith_index_u32(u_input.e.x, 11u)], Struct_1(vec4<f32>(arg_1.x, -1000f, arg_1.x, -511f), u_input.a.x))) > _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.a.x, u_input.e.x, u_input.a.x), u_input.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-arg_1);
    global0 = array<Struct_1, 3>();
    let var_2 = ~min(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.a, ~vec3<u32>(u_input.c, u_input.e.x, u_input.e.x)), abs(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(16553u, u_input.e.x, 1u)))), 1u);
    let var_3 = vec2<bool>(true, all(select(!global4.yx, vec2<bool>(0i <= u_input.b.x, u_input.d.x >= u_input.d.x), true)));
    return ~select(~4294967295u, _wgslsmith_clamp_u32(abs(u_input.a.x), ~1u, ~(~1u)), true);
}

fn func_1(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = firstTrailingBit(countOneBits(u_input.b));
    let var_1 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-970f, -616f, -1103f, -179f) + vec4<f32>(1512f, arg_0.x, arg_0.x, -176f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1552f, 1705f, -2268f, arg_0.x)))) * vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1563f), -390f)), _wgslsmith_div_u32(~(u_input.e.x | 1u), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-129f, arg_0.x, arg_0.x, 175f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1000f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 786f, arg_0.x, -317f))))), !select(!select(vec4<bool>(global4.x, global4.x, false, true), vec4<bool>(global4.x, global4.x, global4.x, global4.x), global4.x), vec4<bool>(true, all(vec3<bool>(global4.x, global4.x, true)), all(vec4<bool>(global4.x, global4.x, global4.x, false)), false & global4.x), !vec4<bool>(global4.x, true, true, global4.x)));
    let var_2 = var_1.b;
    var var_3 = var_1;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_3.b.a)), countOneBits(145029u));
    return vec3<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.x - var_1.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.b.a.x, var_3.b.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 11>();
    global3 = array<Struct_1, 31>();
    global3 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -190f))), _wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1152f, 795f, global4.x)))))))));
    var var_1 = Struct_2(~((u_input.c << (26446u % 32u)) | ~(~u_input.a.x)), global3[_wgslsmith_index_u32(reverseBits(4294967295u), 31u)], !(!(!vec4<bool>(true, global4.x, global4.x, true))));
    global0 = array<Struct_1, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.b.a)) - _wgslsmith_f_op_vec4_f32(abs(var_1.b.a))), var_1.b.a, true)) + var_1.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.b.b, ~8094u, _wgslsmith_mult_u32(u_input.e.x, 1u << (u_input.e.x % 32u))), ~vec3<u32>(_wgslsmith_mod_u32(max(4294967295u, u_input.c), u_input.c | 8142u), u_input.e.x, u_input.a.x), firstLeadingBit(reverseBits(-(~u_input.b.yzz))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.b.a.x, var_1.b.a.x)))), all(select(select(var_1.c.ww, var_1.c.xw, global4.yz), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, true))))), var_1.a);
}

