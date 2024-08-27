struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 0u, 0u, 89048u, 29763u, 22562u, 5775u, 24802u, 21182u, 1u, 93849u, 4294967295u);

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(4294967295u, vec3<i32>(43451i, -5373i, 0i)), Struct_1(4294967295u, vec3<i32>(-1i, 2147483647i, -5378i)), Struct_1(1u, vec3<i32>(0i, 2147483647i, 1i)), Struct_1(1349u, vec3<i32>(-61193i, -1i, -2363i)), Struct_1(1u, vec3<i32>(0i, 2147483647i, 33323i)), Struct_1(4294967295u, vec3<i32>(-52260i, 2147483647i, 0i)), Struct_1(59374u, vec3<i32>(545i, 6423i, -32006i)), Struct_1(5844u, vec3<i32>(11303i, 0i, 6065i)), Struct_1(24937u, vec3<i32>(14333i, -1i, -2808i)), Struct_1(1u, vec3<i32>(-1i, 1i, -1i)), Struct_1(38966u, vec3<i32>(-1i, 20952i, -37726i)), Struct_1(0u, vec3<i32>(-16597i, 1i, 9228i)), Struct_1(0u, vec3<i32>(2147483647i, -37444i, i32(-2147483648))), Struct_1(20737u, vec3<i32>(50313i, 2147483647i, -67650i)), Struct_1(103416u, vec3<i32>(-19931i, -41600i, -35684i)), Struct_1(4294967295u, vec3<i32>(-17054i, i32(-2147483648), i32(-2147483648))), Struct_1(4294967295u, vec3<i32>(1i, -1i, 2147483647i)), Struct_1(26888u, vec3<i32>(39735i, 2147483647i, -2774i)), Struct_1(30294u, vec3<i32>(42216i, 0i, 33944i)), Struct_1(4294967295u, vec3<i32>(2147483647i, -41365i, 4127i)), Struct_1(4294967295u, vec3<i32>(-55176i, -1i, -1i)));

var<private> global2: Struct_4;

var<private> global3: vec2<bool>;

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = true;
    let var_1 = ~(~(~global2.c));
    var var_2 = ~select(-(~(-2147483647i)) >> (firstTrailingBit(u_input.a.x) % 32u), global2.d, global3.x);
    let var_3 = 1418i;
    var var_4 = select(any(!(!vec2<bool>(global3.x, global3.x))), global3.x, global3.x);
    return global2.e;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<u32> {
    return select(select(vec2<u32>(1u, 18415u), arg_0.ww, all(vec2<bool>(false, global3.x))) >> (vec2<u32>(arg_0.x & 0u, 15218u) % vec2<u32>(32u)), ~(~abs(vec2<u32>(100808u, u_input.a.x))), all(vec3<bool>(true, false, select(false, global3.x, true)))) ^ arg_0.xy;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    var var_0 = vec3<u32>(func_1(global2.c.xz).a.a, arg_2.a.a, _wgslsmith_add_u32(4294967295u, global2.a.a));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~(1u | var_0.x), ~reverseBits(reverseBits(67061u)), _wgslsmith_dot_vec2_u32(~countOneBits(u_input.a.zx), ~u_input.b.yz), global2.a.a), ~arg_0.c, global2.c);
    let var_2 = arg_0.e;
    var_0 = global2.c.xyy;
    let var_3 = ~1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b)) + _wgslsmith_f_op_f32(469f + 1157f));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global3 = vec2<bool>(global3.x | false, true);
    let var_0 = arg_2;
    let var_1 = vec4<i32>(global2.d, arg_2.a, -2147483647i, -2902i);
    let var_2 = _wgslsmith_f_op_f32(func_4(Struct_4(Struct_1(select(arg_3.a.a, 39882u, true), vec3<i32>(-72240i, var_0.a << (95335u % 32u), var_1.x & var_1.x)), _wgslsmith_f_op_f32(-global2.b), vec4<u32>(global2.a.a & max(0u, u_input.b.x), 11829u, 4294967295u, 4294967295u), -_wgslsmith_dot_vec3_i32(global2.e.a.b, arg_3.a.b), Struct_2(arg_3.a)), Struct_4(func_1(func_3(~global2.c, func_1(vec2<u32>(1u, 4294967295u)).a)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - 1051f) - _wgslsmith_f_op_f32(abs(672f)))), (~global2.c | ~u_input.b) | global2.c, arg_3.a.b.x, global2.e), Struct_2(global2.e.a)));
    global1 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(1435f * -762f)), 639f))), 622f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(17084u, global2.a.a & max(~global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(countOneBits(global2.c.x), 12u)]));
    var var_1 = func_1(firstLeadingBit(global2.c.xz));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, -1898f, -152f, global2.b) + vec4<f32>(global2.b, 1000f, -869f, -1721f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-516f, 1203f, 1213f, global2.b)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1156f))), global2.b, global2.b, 788f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec4<i32>(global2.d, 32994i, -1i, 22290i), global3.x, Struct_3(-29494i), global2.e)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(Struct_4(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 12u)], 21u)], 317f, vec4<u32>(var_1.a.a, var_1.a.a, var_0.x, 5106u), -1i, global2.e), Struct_4(Struct_1(var_0.x, vec3<i32>(var_1.a.b.x, 43070i, global2.a.b.x)), 983f, vec4<u32>(0u, global2.c.x, 77163u, 1u), 35776i, global2.e), global2.e)))), -1283f, _wgslsmith_f_op_f32(-global2.b)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.b, -234f, 532f) * vec4<f32>(1274f, -221f, 120f, 966f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b, -1546f, global2.b, -1000f), vec4<f32>(global2.b, global2.b, -315f, 1145f)))))))));
    global3 = select(vec2<bool>(var_2.x <= 825f, !(!any(vec2<bool>(false, false)))), !select(select(!vec2<bool>(global3.x, false), vec2<bool>(true, true), select(vec2<bool>(global3.x, global3.x), vec2<bool>(true, true), vec2<bool>(false, false))), select(select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x)), select(vec2<bool>(false, false), vec2<bool>(false, false), global3.x), vec2<bool>(global3.x, false)), !(global3.x & false)), all(vec3<bool>(9704u > firstTrailingBit(4288u), any(vec4<bool>(true, true, true, true)), false)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_2);
    global3 = select(vec2<bool>(global3.x, true & (_wgslsmith_f_op_f32(func_4(Struct_4(global2.a, -131f, u_input.a, -14936i, Struct_2(Struct_1(u_input.a.x, vec3<i32>(-2147483647i, 31491i, 69839i)))), Struct_4(Struct_1(18368u, vec3<i32>(1i, global2.a.b.x, global2.e.a.b.x)), global2.b, u_input.a, 2147483647i, global2.e), Struct_2(global2.a))) > _wgslsmith_f_op_f32(func_4(Struct_4(Struct_1(var_0.x, global2.a.b), 935f, vec4<u32>(57408u, 0u, var_0.x, global0[_wgslsmith_index_u32(global2.e.a.a, 12u)]), var_1.a.b.x, global2.e), Struct_4(var_1.a, var_2.x, vec4<u32>(51218u, 1u, var_0.x, var_1.a.a), global2.a.b.x, global2.e), global2.e)))), select(select(vec2<bool>(false, all(vec2<bool>(global3.x, false))), vec2<bool>(!global3.x, global3.x), false), vec2<bool>(true, _wgslsmith_f_op_f32(trunc(var_2.x)) < _wgslsmith_f_op_f32(sign(-1200f))), all(vec2<bool>(global3.x, true))), !(!(!vec2<bool>(global3.x, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec3<f32>(var_2.x, var_3.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_3.x)))));
}

