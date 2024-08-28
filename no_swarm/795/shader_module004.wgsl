struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(286f, -921f, -642f), vec3<f32>(-196f, -524f, 492f), vec3<f32>(1510f, 1144f, -557f), vec3<f32>(-624f, -226f, 261f), vec3<f32>(917f, 1000f, 1515f), vec3<f32>(485f, -1718f, -824f), vec3<f32>(-404f, 728f, 152f), vec3<f32>(1118f, 166f, -799f), vec3<f32>(-450f, 160f, 110f), vec3<f32>(461f, -1370f, 143f), vec3<f32>(1626f, 215f, 899f));

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-7581i, 2147483647i, 0i), vec3<i32>(-4399i, i32(-2147483648), 34782i), vec3<i32>(-1i, 2147483647i, -26606i), vec3<i32>(4467i, 0i, 0i), vec3<i32>(11635i, -20494i, -12987i), vec3<i32>(35733i, -29620i, i32(-2147483648)), vec3<i32>(31304i, 2147483647i, 22957i), vec3<i32>(54735i, 715i, 2147483647i), vec3<i32>(-54044i, 2147483647i, 35591i), vec3<i32>(31245i, 2147483647i, 1i), vec3<i32>(0i, 23646i, 22330i), vec3<i32>(1i, 0i, -1i), vec3<i32>(7672i, 38458i, -1935i), vec3<i32>(-7184i, 0i, -1i), vec3<i32>(i32(-2147483648), -6872i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, -8928i), vec3<i32>(2147483647i, -10428i, 2147483647i), vec3<i32>(-11655i, -33133i, 1i), vec3<i32>(1i, 0i, 10860i), vec3<i32>(-1i, -1076i, 0i), vec3<i32>(34787i, 13164i, -39936i), vec3<i32>(0i, -23428i, 0i), vec3<i32>(0i, 0i, -1i), vec3<i32>(-14634i, 1i, -28149i), vec3<i32>(-16112i, 4156i, -1i), vec3<i32>(22798i, -23778i, 0i), vec3<i32>(i32(-2147483648), 1i, -44593i));

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-556f), Struct_1(-1686f), Struct_1(-1571f), Struct_1(-1145f), Struct_1(1521f), Struct_1(-395f), Struct_1(-1652f), Struct_1(-1000f), Struct_1(1460f), Struct_1(926f), Struct_1(571f), Struct_1(-1000f), Struct_1(-420f), Struct_1(-398f), Struct_1(-476f), Struct_1(1595f), Struct_1(-911f), Struct_1(-2086f), Struct_1(460f), Struct_1(741f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = -1656f;
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~max(u_input.e.x, u_input.a.x ^ u_input.b), u_input.c.x), u_input.c.x | ~0u), 20u)];
    global1 = u_input.a.x;
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~(reverseBits(vec2<u32>(u_input.a.x, u_input.c.x)) << ((u_input.a.yx ^ vec2<u32>(u_input.c.x, u_input.c.x)) % vec2<u32>(32u)))), u_input.e.zy), 20u)];
    let var_3 = u_input.a.zy;
    return ~((u_input.a.x << (12174u % 32u)) & ~_wgslsmith_mult_u32(~var_3.x, abs(var_3.x)));
}

fn func_2() -> vec3<i32> {
    global1 = ~_wgslsmith_mult_u32(u_input.e.x, func_3());
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, 823u) | u_input.c.yz) << (u_input.c.xz % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(114339u, u_input.a.x | u_input.c.x), 33621u)), vec2<u32>(u_input.e.x, ~1u & (max(u_input.b, 1u) | ~26173u)));
    global4 = array<Struct_1, 20>();
    var var_0 = u_input.a & abs(firstLeadingBit(u_input.c));
    var var_1 = vec3<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), false), true)), any(!vec4<bool>(false, any(vec4<bool>(false, false, true, true)), var_0.x != u_input.b, true)));
    return vec3<i32>(-1i, u_input.d, u_input.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    global4 = array<Struct_1, 20>();
    global2 = arg_1;
    let var_0 = vec3<f32>(1801f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)) + _wgslsmith_f_op_f32(1281f - global2.a)), arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.a, -779f))))))));
    global2 = Struct_1(-1546f);
    let var_1 = reverseBits(~abs(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, arg_0.x)), arg_0.zz)));
    return 346i >= _wgslsmith_dot_vec3_i32(func_2() >> (u_input.a % vec3<u32>(32u)), select(~_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(4294967295u, 27u)], vec3<i32>(arg_0.x, var_1, u_input.d)), ~arg_0 | firstTrailingBit(global3[_wgslsmith_index_u32(u_input.b, 27u)]), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-209f);
    var var_1 = !func_1(~_wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, 12609i, -12113i), ~global3[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(global2.a));
    var var_2 = -(-22221i >> (u_input.c.x % 32u)) | u_input.d;
    let var_3 = Struct_1(-1038f);
    global2 = Struct_1(_wgslsmith_f_op_f32(abs(var_0.a)));
    global3 = array<vec3<i32>, 27>();
    let var_4 = abs(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~min(abs(~vec4<u32>(0u, u_input.a.x, u_input.c.x, 13266u)), ~(~vec4<u32>(75337u, u_input.e.x, 1190u, u_input.e.x))), u_input.b & ~select(84649u, 1u, true));
}

