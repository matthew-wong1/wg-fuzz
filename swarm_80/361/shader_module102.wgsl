struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(75265u, 9868u, 4294967295u, 0u), vec3<u32>(1142u, 0u, 76413u)), Struct_1(vec4<u32>(31138u, 14170u, 4294967295u, 70758u), vec3<u32>(4294967295u, 1u, 42763u)), Struct_1(vec4<u32>(46798u, 88882u, 56897u, 6025u), vec3<u32>(4294967295u, 0u, 28052u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 11770u, 9308u), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 21737u, 4294967295u, 1u), vec3<u32>(0u, 7007u, 1u)), Struct_1(vec4<u32>(0u, 5421u, 31881u, 110856u), vec3<u32>(1u, 99139u, 39919u)), Struct_1(vec4<u32>(90166u, 0u, 34895u, 45339u), vec3<u32>(32293u, 1u, 0u)));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<u32>(4294967295u, 1u, 1u, 10505u), vec3<u32>(16807u, 0u, 88887u)), Struct_1(vec4<u32>(14753u, 1953u, 0u, 54033u), vec3<u32>(16169u, 0u, 45021u)), Struct_1(vec4<u32>(10338u, 27052u, 4294967295u, 7364u), vec3<u32>(4294967295u, 45556u, 0u)), Struct_1(vec4<u32>(106833u, 36200u, 1u, 62904u), vec3<u32>(0u, 29366u, 1u)), Struct_1(vec4<u32>(1u, 51672u, 4294967295u, 1u), vec3<u32>(129u, 76640u, 64003u)), Struct_1(vec4<u32>(2146u, 47850u, 12694u, 0u), vec3<u32>(4294967295u, 0u, 30828u)), Struct_1(vec4<u32>(1u, 1u, 39430u, 4294967295u), vec3<u32>(42472u, 26449u, 25385u)), Struct_1(vec4<u32>(68090u, 1u, 89278u, 0u), vec3<u32>(16299u, 26162u, 19975u)), Struct_1(vec4<u32>(0u, 4541u, 79593u, 0u), vec3<u32>(47389u, 23939u, 426u)), Struct_1(vec4<u32>(15996u, 32292u, 4294967295u, 1u), vec3<u32>(9283u, 1u, 4294967295u)));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<u32>(4294967295u, 26469u, 4294967295u, 48074u), vec3<u32>(1u, 1u, 38445u)), Struct_1(vec4<u32>(0u, 0u, 54441u, 0u), vec3<u32>(14986u, 10851u, 0u)), Struct_1(vec4<u32>(0u, 25291u, 0u, 1u), vec3<u32>(22635u, 192367u, 37615u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 19551u), vec3<u32>(5621u, 1u, 1u)), Struct_1(vec4<u32>(13004u, 1u, 3695u, 4294967295u), vec3<u32>(1u, 27953u, 11854u)), Struct_1(vec4<u32>(67739u, 1u, 4294967295u, 1u), vec3<u32>(4294967295u, 49020u, 11774u)), Struct_1(vec4<u32>(4294967295u, 34212u, 1u, 0u), vec3<u32>(1u, 0u, 20947u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 25590u), vec3<u32>(4294967295u, 1u, 0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = 4294967295u;
    global1 = array<Struct_1, 10>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 7u)];
    let var_2 = arg_0;
    let var_3 = ~(~vec3<u32>(arg_0.a.x, var_1.b.x, _wgslsmith_sub_u32(u_input.c, arg_0.b.x))) >> ((max(arg_0.b, ~vec3<u32>(7030u, 34379u, var_2.a.x)) >> (~vec3<u32>(~u_input.a, _wgslsmith_mult_u32(4294967295u, var_2.a.x), ~41734u) % vec3<u32>(32u))) % vec3<u32>(32u));
    return vec3<i32>(0i, u_input.d, -35860i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~u_input.b.x;
    global1 = array<Struct_1, 10>();
    var var_1 = firstLeadingBit(~(-u_input.b.wzz));
    global1 = array<Struct_1, 10>();
    var_1 = -func_2(Struct_1(vec4<u32>(arg_0.b.x, arg_0.a.x, arg_0.a.x, arg_0.b.x) | ~vec4<u32>(23585u, arg_0.a.x, u_input.c, arg_0.b.x), arg_0.a.wzw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, 864f, -1104f)))));
    return global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.x), 7u)];
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = func_1(global2[_wgslsmith_index_u32(arg_0.b.x, 8u)]);
    var var_1 = select(!vec4<bool>(any(vec2<bool>(true, false)), true, arg_2, !(arg_2 || arg_2)), vec4<bool>(any(vec3<bool>(false, false, arg_1)) & true, arg_1, !all(select(vec4<bool>(false, arg_1, false, arg_2), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(false, arg_1, arg_1, arg_2))), !(var_0.a.x != 45321u) && false), firstTrailingBit(~arg_0.b.x) == arg_0.b.x);
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~arg_0.b.x, func_1(func_1(global0[_wgslsmith_index_u32(4294967295u, 7u)])).a.x ^ func_1(global2[_wgslsmith_index_u32(23906u, 8u)]).b.x), 7u)];
    var_0 = global0[_wgslsmith_index_u32(arg_0.b.x, 7u)];
    var var_2 = -u_input.b.yzw;
    return _wgslsmith_f_op_f32(-681f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(302f, 1114f)))) + 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(f32(-1f) * -424f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0[_wgslsmith_index_u32(46247u, 7u)]);
    global0 = array<Struct_1, 7>();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    var var_2 = var_0;
    global2 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f - _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(var_1.a.x, 10u)], false, true))) + _wgslsmith_f_op_f32(sign(-137f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1167f + 2570f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1222f + -1710f), -498f))))));
}

