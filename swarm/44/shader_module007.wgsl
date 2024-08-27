struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-18099i, vec4<i32>(60744i, 1i, 2147483647i, -1i), vec3<i32>(-10386i, 6212i, -65234i)), Struct_1(28957i, vec4<i32>(-28970i, -1i, 2147483647i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 8346i)), Struct_1(1i, vec4<i32>(0i, 1i, -24724i, -62669i), vec3<i32>(-1i, -44216i, 1i)), Struct_1(1i, vec4<i32>(19558i, -1i, 1i, 1i), vec3<i32>(1i, i32(-2147483648), 1i)), Struct_1(-26171i, vec4<i32>(-1i, 1i, -12809i, -35080i), vec3<i32>(1i, 0i, -34571i)), Struct_1(5464i, vec4<i32>(0i, -8218i, -1i, -1i), vec3<i32>(-17094i, i32(-2147483648), -15131i)), Struct_1(i32(-2147483648), vec4<i32>(0i, 0i, 2147483647i, 443i), vec3<i32>(28415i, 0i, -1i)), Struct_1(-3312i, vec4<i32>(-38736i, -4853i, -1932i, -1i), vec3<i32>(0i, 0i, 0i)), Struct_1(i32(-2147483648), vec4<i32>(73678i, -1i, 52375i, 37590i), vec3<i32>(-11399i, 12630i, 15166i)), Struct_1(71586i, vec4<i32>(7385i, 5745i, 0i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 0i)), Struct_1(-1i, vec4<i32>(-11964i, -6428i, 12073i, 45316i), vec3<i32>(-1i, -78917i, 12222i)), Struct_1(-17196i, vec4<i32>(47676i, i32(-2147483648), -5760i, 2147483647i), vec3<i32>(0i, 0i, 2147483647i)), Struct_1(-28787i, vec4<i32>(1i, 0i, -1i, 68219i), vec3<i32>(-29192i, -9352i, -1i)), Struct_1(2147483647i, vec4<i32>(0i, -8862i, 1314i, 2147483647i), vec3<i32>(2147483647i, -1i, -28313i)), Struct_1(-1750i, vec4<i32>(i32(-2147483648), -1i, 84305i, i32(-2147483648)), vec3<i32>(2147483647i, 13542i, 1i)), Struct_1(-18844i, vec4<i32>(-23133i, -5796i, -1i, 9437i), vec3<i32>(11128i, -1i, -2376i)), Struct_1(-11633i, vec4<i32>(-38597i, 35624i, -23876i, 1i), vec3<i32>(-27673i, 2147483647i, -13052i)), Struct_1(-1i, vec4<i32>(-35592i, i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-1i, -36853i, -1i)), Struct_1(5936i, vec4<i32>(i32(-2147483648), 4681i, 36157i, -1i), vec3<i32>(0i, 6668i, -18984i)), Struct_1(0i, vec4<i32>(23874i, 2586i, 2147483647i, 45958i), vec3<i32>(2830i, -7051i, -1i)), Struct_1(1i, vec4<i32>(-1i, -1i, -49589i, -31718i), vec3<i32>(2147483647i, -1717i, 10288i)), Struct_1(5446i, vec4<i32>(2147483647i, 2147483647i, -1i, -17818i), vec3<i32>(32239i, i32(-2147483648), 62893i)), Struct_1(56263i, vec4<i32>(-20092i, -1i, -22372i, 46024i), vec3<i32>(70282i, 22954i, 5988i)), Struct_1(2147483647i, vec4<i32>(1i, 61618i, -489i, 11450i), vec3<i32>(94516i, 42893i, -6465i)), Struct_1(1i, vec4<i32>(1i, -8163i, 1i, -39718i), vec3<i32>(0i, 21442i, -23627i)), Struct_1(39405i, vec4<i32>(13014i, -34348i, -1i, -53516i), vec3<i32>(-32839i, 24536i, -23166i)), Struct_1(i32(-2147483648), vec4<i32>(57902i, -3017i, 16557i, 2147483647i), vec3<i32>(2103i, 0i, -16772i)), Struct_1(2147483647i, vec4<i32>(15036i, 8397i, -5482i, 19567i), vec3<i32>(i32(-2147483648), -46440i, 1i)), Struct_1(0i, vec4<i32>(20977i, 1i, 13088i, i32(-2147483648)), vec3<i32>(2147483647i, 15631i, -17443i)), Struct_1(-1i, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-15255i, -1i, 19374i)), Struct_1(11243i, vec4<i32>(14811i, i32(-2147483648), -31194i, 1i), vec3<i32>(1i, 1i, i32(-2147483648))));

var<private> global1: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec2<f32> {
    global0 = array<Struct_1, 31>();
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c.x < u_input.b));
    var var_1 = Struct_2(vec2<bool>(!(!any(vec4<bool>(var_0.x, true, true, var_0.x))), true));
    global1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, abs(_wgslsmith_sub_u32(u_input.c.x, 14008u)), u_input.b, ~u_input.c.x), reverseBits(vec4<u32>(11275u, 30791u, u_input.a.x, u_input.b) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 70105u) % vec4<u32>(32u))) ^ (vec4<u32>(0u, 72676u, u_input.b, u_input.a.x) >> (firstLeadingBit(vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.b)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(378f * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -874f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(744f, 1145f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1444f, 455f), vec2<f32>(-1289f, 599f)), vec2<f32>(1000f, 136f), !var_1.a)))));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> vec2<bool> {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-810f + -826f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-318f + arg_1.x))) * arg_1.x), arg_1.x, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), false)))));
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = arg_2.x;
    var var_2 = Struct_2(var_0.yy);
    var var_3 = Struct_1(i32(-1i) * -select(-1i, 1i, any(vec4<bool>(false, true, var_0.x, false))), -(vec4<i32>(abs(-11138i), _wgslsmith_clamp_i32(-1i, 56312i, 13839i), -1i, 1i) & vec4<i32>(1i, 1i, 1i, 1i)), vec3<i32>(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-44816i, -29550i, 2147483647i), vec3<i32>(2147483647i, -2147483647i, 1i))), -abs(~(-1i)), ~0i));
    return !select(var_2.a, var_2.a, !select(!var_0.zy, select(var_2.a, var_2.a, var_0.x), var_0.x));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_2(vec2<bool>(true, select(true, true, false && all(vec2<bool>(true, false)))));
    var var_1 = abs(u_input.a.x & 1u);
    global0 = array<Struct_1, 31>();
    var var_2 = Struct_2(func_3(71776u ^ (~u_input.a.x << (71741u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), vec3<u32>(~(~u_input.c.x), ~(~10240u), _wgslsmith_mult_u32(select(u_input.b, 1u, var_0.a.x), ~0u)), 0u));
    let var_3 = u_input.c.xx;
    return ((-23627i | arg_0.x) >> (var_3.x % 32u)) ^ firstTrailingBit(~(-20515i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 128f;
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, -195f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2364f, -1000f), vec2<f32>(1280f, -833f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1197f, -1993f) + vec2<f32>(-733f, 174f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-247f, -558f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1102f, 1164f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_1()), vec2<f32>(-222f, -1327f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(3422f, var_0.x), vec2<f32>(-105f, -299f), vec2<bool>(true, true)))))))));
    let var_1 = true;
    let var_2 = u_input.a;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(var_2.x), ~(~(~u_input.a.x))), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-var_3.c.x, ~abs(_wgslsmith_dot_vec4_i32(var_3.b, var_3.b)), -func_2(~var_3.b)), 20946u | _wgslsmith_dot_vec3_u32(~(~u_input.c), vec3<u32>(u_input.b, ~u_input.c.x, 6505u)), vec3<u32>(var_2.x, 0u, var_2.x) << (max(u_input.c, vec3<u32>(var_2.x, 1u, min(u_input.a.x, 4294967295u))) % vec3<u32>(32u)), vec4<f32>(-1130f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(676f * var_0.x))))), _wgslsmith_f_op_f32(-var_0.x), -951f));
}

