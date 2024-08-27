struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<u32>(0u, 6882u, 5573u, 51444u)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u)), Struct_1(vec4<u32>(1u, 0u, 0u, 32179u)), Struct_1(vec4<u32>(4294967295u, 0u, 73264u, 83416u)), Struct_1(vec4<u32>(3275u, 1u, 0u, 1u)), Struct_1(vec4<u32>(0u, 1u, 3897u, 1u)), Struct_1(vec4<u32>(118878u, 17783u, 33949u, 10426u)), Struct_1(vec4<u32>(14642u, 1u, 16910u, 4294967295u)), Struct_1(vec4<u32>(7519u, 4294967295u, 26522u, 0u)), Struct_1(vec4<u32>(10291u, 1u, 219u, 4294967295u)), Struct_1(vec4<u32>(17064u, 4294967295u, 0u, 1u)), Struct_1(vec4<u32>(1u, 0u, 0u, 58540u)), Struct_1(vec4<u32>(8339u, 66167u, 4294967295u, 1u)), Struct_1(vec4<u32>(95679u, 4294967295u, 10832u, 1u)), Struct_1(vec4<u32>(41292u, 4294967295u, 45609u, 34859u)), Struct_1(vec4<u32>(10698u, 4294967295u, 1u, 39358u)), Struct_1(vec4<u32>(1u, 27786u, 62538u, 35893u)), Struct_1(vec4<u32>(45960u, 46423u, 0u, 16440u)), Struct_1(vec4<u32>(1u, 1071u, 1u, 65u)), Struct_1(vec4<u32>(40052u, 1u, 1u, 4822u)));

var<private> global4: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(1u, 3604u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(31797u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 6773u), vec2<u32>(77723u, 4294967295u), vec2<u32>(60590u, 4294967295u), vec2<u32>(118856u, 24296u), vec2<u32>(55885u, 44506u), vec2<u32>(48676u, 120520u), vec2<u32>(20025u, 56996u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> bool {
    global2 = array<Struct_1, 30>();
    let var_0 = global2[_wgslsmith_index_u32(65106u, 30u)];
    let var_1 = -1i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(226f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2220f))) + 582f);
    var var_3 = var_2;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> bool {
    return !all(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(8802u, 13u)]), !vec2<bool>(global0[_wgslsmith_index_u32(56067u, 13u)], arg_1.x), vec2<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(50814u, 13u)], arg_1.x)), !arg_1.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec4<bool>(func_2(false, arg_0.ywx & arg_0.wwx), global0[_wgslsmith_index_u32(0u, 13u)], func_3(global2[_wgslsmith_index_u32(~arg_1.a.x, 30u)], vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.x, 13u)]), all(vec2<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.x, 13u)])), false))), any(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)])), vec2<bool>(!global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], true), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.x, 13u)]), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)])), arg_0.x > u_input.c))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-792f, 769f, 2209f, -587f), vec4<f32>(-496f, 593f, 106f, 400f), vec4<bool>(false, var_0.x, false, false))))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(abs(vec2<u32>(arg_1.a.x, arg_1.a.x)), ~global4[_wgslsmith_index_u32(0u, 12u)]), global4[_wgslsmith_index_u32(~arg_1.a.x, 12u)] << (firstTrailingBit(arg_1.a.zw) % vec2<u32>(32u))), 13u)])));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~arg_1.a.x | _wgslsmith_add_u32(4294967295u, arg_1.a.x), _wgslsmith_div_u32(~arg_1.a.x >> (~arg_1.a.x % 32u), reverseBits(_wgslsmith_div_u32(arg_1.a.x, arg_1.a.x)))), firstTrailingBit(select(arg_1.a.x, arg_1.a.x, false))), 20u)];
    global1 = false;
    global1 = true;
    return ~(arg_1.a.x & var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!global0[_wgslsmith_index_u32(min(1u, firstLeadingBit(231u)), 13u)], global0[_wgslsmith_index_u32(1u, 13u)], !global0[_wgslsmith_index_u32(~min(func_1(vec4<i32>(u_input.c, u_input.b, u_input.d, u_input.d), Struct_1(vec4<u32>(26069u, 1u, 39398u, 4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30874u), global4[_wgslsmith_index_u32(4294967295u, 12u)])), 13u)]);
    var var_1 = abs(max(vec4<u32>(func_1(vec4<i32>(-1i, u_input.b, u_input.d, u_input.c) & vec4<i32>(38371i, 27849i, 5963i, -1i), global3[_wgslsmith_index_u32(1u, 20u)]), 1u, 39317u, ~1u), ~(max(vec4<u32>(0u, 30855u, 0u, 20944u), vec4<u32>(4294967295u, 12791u, 14644u, 4294967295u)) ^ firstTrailingBit(vec4<u32>(0u, 82450u, 101377u, 1524u)))));
    let var_2 = reverseBits(~(~max(~var_1.x, abs(4294967295u))));
    var_1 = select(min(vec4<u32>(var_2 | var_2, var_1.x, ~4294967295u, var_1.x | var_1.x), ~(vec4<u32>(43178u, 23682u, 82352u, var_2) | vec4<u32>(13480u, 4294967295u, var_1.x, var_1.x))), reverseBits(~vec4<u32>(53272u, var_2, var_1.x, var_2)) & countOneBits(~vec4<u32>(55500u, var_1.x, var_1.x, 4294967295u)), true) | ~vec4<u32>(select(_wgslsmith_clamp_u32(6578u, 64235u, 86021u), ~var_1.x, !var_0.x), var_2, _wgslsmith_add_u32(2144u ^ var_2, countOneBits(var_2)), ~(var_1.x << (0u % 32u)));
    var var_3 = select(var_0.xz, var_0.zz, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1413f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(2676f)), -174f))), -2142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2189f, -182f)) - -753f))));
}

