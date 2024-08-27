struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(88469u, 102012u, 4294967295u, 24427u)), Struct_1(vec4<u32>(4294967295u, 36244u, 35526u, 60398u)), Struct_1(vec4<u32>(0u, 89062u, 21060u, 4294967295u)), Struct_1(vec4<u32>(14929u, 81062u, 1u, 9113u)), Struct_1(vec4<u32>(90359u, 4294967295u, 4294967295u, 1319u)), Struct_1(vec4<u32>(4294967295u, 76809u, 4294967295u, 57499u)), Struct_1(vec4<u32>(0u, 4294967295u, 48908u, 14176u)), Struct_1(vec4<u32>(1u, 38938u, 56424u, 69888u)), Struct_1(vec4<u32>(4632u, 1u, 3852u, 0u)), Struct_1(vec4<u32>(16588u, 31025u, 0u, 1u)), Struct_1(vec4<u32>(1u, 6615u, 48189u, 4294967295u)), Struct_1(vec4<u32>(45174u, 76489u, 9117u, 52950u)), Struct_1(vec4<u32>(4901u, 0u, 8719u, 103975u)), Struct_1(vec4<u32>(45365u, 0u, 1u, 0u)), Struct_1(vec4<u32>(33419u, 4294967295u, 13799u, 0u)), Struct_1(vec4<u32>(1u, 9187u, 45857u, 4294967295u)), Struct_1(vec4<u32>(1u, 52253u, 1u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 36619u, 4294967295u, 24849u)), Struct_1(vec4<u32>(90108u, 2302u, 1u, 38201u)), Struct_1(vec4<u32>(4294967295u, 29275u, 67046u, 60884u)), Struct_1(vec4<u32>(26625u, 0u, 26319u, 4294967295u)), Struct_1(vec4<u32>(1u, 0u, 73787u, 21715u)), Struct_1(vec4<u32>(33067u, 0u, 860u, 4294967295u)));

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(0u, 1u, 37640u), vec3<u32>(4294967295u, 3417u, 0u), vec3<u32>(15085u, 1u, 1u), vec3<u32>(38199u, 1u, 1u), vec3<u32>(4294967295u, 0u, 20366u), vec3<u32>(1u, 64795u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(41758u, 4294967295u, 1u), vec3<u32>(1u, 59859u, 0u), vec3<u32>(46456u, 32072u, 4294967295u), vec3<u32>(59072u, 1u, 0u), vec3<u32>(35283u, 115562u, 1u), vec3<u32>(2588u, 28865u, 17335u));

var<private> global3: array<Struct_1, 5>;

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_2(vec4<bool>(!all(vec2<bool>(true, true)), !(all(vec3<bool>(false, true, false)) | true), arg_0 <= arg_0, true));
    let var_1 = Struct_2(vec4<bool>(false, (1i <= u_input.a.x) != true, 0i <= (_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), global1.xz) << (4294967295u % 32u)), all(var_0.a)));
    let var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(36757u), 5u)];
    let var_3 = var_1;
    global2 = array<vec3<u32>, 13>();
    return ~abs(var_2.a.x);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f * -1827f)))) * _wgslsmith_f_op_f32(abs(-376f)))), 23u)];
    var var_1 = u_input.d;
    global4 = arg_0;
    var var_2 = -abs(-global1.x);
    var_2 = -35846i;
    return Struct_2(vec4<bool>(false | (_wgslsmith_mod_u32(u_input.c, 4294967295u) == _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 59433u, u_input.b.x, 4294967295u), var_0.a)), true, !arg_0, arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    global2 = array<vec3<u32>, 13>();
    let var_0 = u_input.b.x;
    var var_1 = 29300u;
    let var_2 = firstLeadingBit(~abs(vec4<u32>(1u, ~96160u, 4294967295u, 0u)));
    let var_3 = u_input.a.zy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), arg_1.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-526f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -262f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(func_4(func_2(true & (-721f <= _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(368f)), _wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(select(1406f, -590f, false)), -2568f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 13>();
    var var_0 = !vec3<bool>(select(all(vec3<bool>(true, true, true)), false, all(vec3<bool>(false, true, false)) & true), !(global1.x > (-10588i & u_input.a.x)), !all(vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_f32(-840f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))))));
    global3 = array<Struct_1, 5>();
    var_0 = func_2(any(!(!(!vec4<bool>(var_0.x, true, true, true))))).a.xwx;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~vec4<i32>(global1.x, 0i, -29490i, global1.x)) | firstTrailingBit(vec4<i32>(-15935i, 26212i, 1i, 7834i) << (vec4<u32>(1u, u_input.c, 68026u, 18765u) % vec4<u32>(32u)))), min(vec2<u32>(~u_input.b.x, u_input.c), ~vec2<u32>(u_input.b.x, 6933u)) >> (select(~abs(vec2<u32>(u_input.b.x, 20728u)), ~(~u_input.b.yx), var_0.xy) % vec2<u32>(32u)));
}

