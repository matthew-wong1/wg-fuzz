struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: i32,
    d: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec2<f32>(1821f, -979f), Struct_3(-1i, vec4<bool>(true, false, true, true)), 2147483647i, 0u), Struct_4(vec2<f32>(-1351f, -1746f), Struct_3(-1i, vec4<bool>(false, true, false, true)), -1i, 0u), Struct_4(vec2<f32>(-392f, 1702f), Struct_3(2147483647i, vec4<bool>(true, true, true, false)), 29143i, 1u), Struct_4(vec2<f32>(-661f, -1152f), Struct_3(-17521i, vec4<bool>(true, false, true, true)), i32(-2147483648), 828u), Struct_4(vec2<f32>(1840f, 1385f), Struct_3(i32(-2147483648), vec4<bool>(false, true, false, false)), -30514i, 0u), Struct_4(vec2<f32>(-1102f, -149f), Struct_3(1i, vec4<bool>(false, false, true, false)), 2147483647i, 21226u), Struct_4(vec2<f32>(500f, -446f), Struct_3(2147483647i, vec4<bool>(true, false, true, true)), 6875i, 0u), Struct_4(vec2<f32>(424f, -1000f), Struct_3(18722i, vec4<bool>(true, false, true, true)), -1i, 0u), Struct_4(vec2<f32>(180f, -1230f), Struct_3(-1i, vec4<bool>(false, true, true, false)), -32895i, 4294967295u), Struct_4(vec2<f32>(981f, -619f), Struct_3(-59376i, vec4<bool>(true, false, true, false)), 65850i, 0u), Struct_4(vec2<f32>(-1000f, 1965f), Struct_3(-1i, vec4<bool>(true, true, true, true)), 0i, 4294967295u), Struct_4(vec2<f32>(-506f, -688f), Struct_3(-17080i, vec4<bool>(false, true, true, true)), 36584i, 0u), Struct_4(vec2<f32>(-327f, 475f), Struct_3(-1i, vec4<bool>(false, false, true, true)), 0i, 1u), Struct_4(vec2<f32>(-549f, -337f), Struct_3(i32(-2147483648), vec4<bool>(true, false, false, false)), -24616i, 4294967295u), Struct_4(vec2<f32>(-950f, -1000f), Struct_3(-59010i, vec4<bool>(false, true, true, true)), -1i, 1u), Struct_4(vec2<f32>(678f, 651f), Struct_3(0i, vec4<bool>(false, true, true, true)), 2147483647i, 4294967295u), Struct_4(vec2<f32>(-312f, -367f), Struct_3(0i, vec4<bool>(false, true, false, false)), -1i, 37826u), Struct_4(vec2<f32>(256f, -1007f), Struct_3(-27212i, vec4<bool>(true, false, true, false)), 10530i, 0u));

var<private> global1: vec4<u32>;

var<private> global2: vec3<u32> = vec3<u32>(16581u, 14371u, 1u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> i32 {
    return 2147483647i;
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_4, 18>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-986f, -199f, -1346f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(756f, -146f, 892f) + vec3<f32>(832f, -1520f, 192f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -273f, -255f)))))), Struct_3(-(func_1() | -33885i), vec4<bool>(false, true, any(vec2<bool>(false, true)), true)));
    let var_1 = countOneBits(~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, u_input.d, -1i, -2147483647i), firstTrailingBit(vec4<i32>(u_input.e.x, var_0.b.a, 2147483647i, u_input.b.x)), abs(vec4<i32>(var_0.b.a, 0i, 57125i, u_input.b.x))), -(~vec4<i32>(u_input.d, u_input.b.x, -1i, 1i))));
    var var_2 = Struct_3(-16289i, vec4<bool>(false, var_0.b.b.x, true | (any(vec2<bool>(var_0.b.b.x, false)) == (var_0.b.b.x && var_0.b.b.x)), any(vec4<bool>(true, true, var_0.b.b.x || false, true))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(211f))) + var_0.a.x), true, !vec2<bool>(var_0.b.b.x, !(!var_2.b.x)), select(select(vec3<bool>(true, var_0.b.b.x, var_2.b.x), vec3<bool>(true, false, var_0.b.b.x && var_0.b.b.x), !(!vec3<bool>(var_2.b.x, true, var_0.b.b.x))), var_0.b.b.wzy, var_2.b.zwx));
    return global0[_wgslsmith_index_u32(~(~global2.x), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec4_u32(max(vec4<u32>(~0u, ~reverseBits(global1.x), global2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, 329u, global1.x, global2.x), countOneBits(vec4<u32>(33244u, 1u, 1u, global2.x)))), vec4<u32>(1u, 1u, countOneBits(26755u), select(global2.x, ~u_input.a, true))), firstLeadingBit(vec4<u32>(0u, ~1u, u_input.c, _wgslsmith_mult_u32(33863u, 1u))));
    var var_0 = u_input.b.x;
    var var_1 = ~func_1() == _wgslsmith_mod_i32(u_input.b.x, u_input.e.x);
    var var_2 = func_2();
    var var_3 = Struct_2(vec4<bool>(all(!vec4<bool>(var_2.b.b.x, var_2.b.b.x, var_2.b.b.x, var_2.b.b.x)), var_2.b.b.x, all(!vec4<bool>(var_2.b.b.x, true, var_2.b.b.x, var_2.b.b.x)), any(vec4<bool>(any(vec2<bool>(var_2.b.b.x, false)), any(var_2.b.b.zww), true, var_2.b.b.x & var_2.b.b.x))));
    let var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1715f, 1097f, -1069f), vec3<f32>(var_2.a.x, var_2.a.x, -151f), vec3<bool>(false, true, false))), vec3<f32>(var_2.a.x, -1282f, var_2.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -369f, var_2.a.x))), var_2.b);
    var var_5 = Struct_3(var_4.b.a, func_2().b.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(-17092i), _wgslsmith_f_op_vec2_f32(-var_2.a), var_4.a, _wgslsmith_clamp_vec2_u32(countOneBits(global2.yx), ~vec2<u32>(max(0u, 1u), ~43225u), ~global2.xx), 0i);
}

