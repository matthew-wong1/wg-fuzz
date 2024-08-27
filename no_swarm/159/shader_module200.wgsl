struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(1u, 1u, 5456u), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(0u, 25792u, 22971u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(59349u, 4680u, 48800u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 22940u, 42729u), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(19126u, 4294967295u, 0u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(33086u, 0u, 46428u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(9275u, 4294967295u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(16566u, 16479u, 0u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(1u, 4294967295u, 47742u), vec3<bool>(false, false, true)), Struct_1(vec3<u32>(4294967295u, 4178u, 1u), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(0u, 0u, 5302u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 23923u, 4294967295u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(50811u, 1u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(0u, 33564u, 1u), vec3<bool>(true, true, false)), Struct_1(vec3<u32>(14606u, 1u, 1u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(1u, 1u, 81515u), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(7092u, 4294967295u, 20552u), vec3<bool>(true, true, false)), Struct_1(vec3<u32>(71592u, 36375u, 23518u), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(true, true, true)), Struct_1(vec3<u32>(0u, 43183u, 9463u), vec3<bool>(false, false, true)), Struct_1(vec3<u32>(80982u, 52919u, 1u), vec3<bool>(true, true, false)));

var<private> global3: array<Struct_2, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32) -> u32 {
    global1 = _wgslsmith_add_vec3_u32(~vec3<u32>(~169997u, 1u, arg_0), vec3<u32>(1u, ~_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_div_u32(0u, global1.x) ^ min(14226u, 78486u))) & ~((countOneBits(vec3<u32>(4294967295u, 0u, 72237u)) & reverseBits(vec3<u32>(global1.x, arg_0, 4294967295u))) & (max(vec3<u32>(4294967295u, 11460u, 1u), vec3<u32>(22905u, 4294967295u, u_input.b)) | reverseBits(vec3<u32>(1u, 1u, 4294967295u))));
    let var_0 = global1.x;
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = global2[_wgslsmith_index_u32(global1.x, 24u)];
    global3 = array<Struct_2, 25>();
    return 26133u;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global2 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, arg_2.c, arg_1.c, _wgslsmith_f_op_f32(-536f + _wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, -1011f, -1892f, arg_1.c), vec4<f32>(arg_2.c, -1109f, -789f, 143f), vec4<bool>(arg_3.b.x, arg_3.b.x, true, false))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, arg_2.c, -525f, 1000f), vec4<f32>(-1303f, 888f, 431f, 2068f), false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 571f, -1212f, arg_2.c)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.c)) + arg_2.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2094f)), -626f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(697f, 755f)), _wgslsmith_f_op_f32(-arg_2.c)))));
    var var_1 = Struct_1(~firstTrailingBit(firstTrailingBit(~arg_3.a)), vec3<bool>(false, arg_3.b.x, select(true, !any(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, true)), all(vec4<bool>(true, false, arg_3.b.x, false)))));
    var var_2 = Struct_1(max(var_1.a, vec3<u32>(abs(0u), _wgslsmith_mod_u32(u_input.b, 88587u), global1.x) ^ vec3<u32>(_wgslsmith_add_u32(arg_1.a, var_1.a.x), 1u, var_1.a.x >> (var_1.a.x % 32u))), select(!select(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), select(arg_3.b, var_1.b, false), true), vec3<bool>(true, true | (u_input.b == arg_2.a), arg_3.b.x), vec3<bool>(select(!var_1.b.x, !arg_3.b.x, all(vec4<bool>(false, true, false, false))), var_1.b.x, !(!var_1.b.x))));
    global2 = array<Struct_1, 24>();
    return var_1.b.x;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = min(51751u, func_2(_wgslsmith_add_u32(_wgslsmith_clamp_u32(select(global1.x, u_input.b, false), 1u, ~global1.x), 44369u)));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(~global1.x, arg_0.a.x ^ 1u, 33091u), ~vec3<u32>(35301u, 7499u, 0u))), !(!vec3<bool>(true, func_3(vec2<i32>(0i, global0[_wgslsmith_index_u32(global1.x, 27u)]), Struct_2(arg_0.a.x, 0i, -718f), Struct_2(u_input.b, 1i, -879f), Struct_1(vec3<u32>(55427u, 8872u, 34428u), vec3<bool>(false, arg_0.b.x, arg_0.b.x))), !arg_0.b.x)));
    var var_2 = 18140u;
    var var_3 = global3[_wgslsmith_index_u32(~(~max(u_input.b, abs(arg_0.a.x)) << (var_1.a.x % 32u)), 25u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.x, 73913u), ~vec3<u32>(54707u, 0u, 1u)))) ^ min(vec3<u32>(_wgslsmith_mult_u32(u_input.b, 28664u) | global1.x, func_1(Struct_1(vec3<u32>(110673u, 50139u, 0u), vec3<bool>(true, false, true))), 0u), (_wgslsmith_add_vec3_u32(vec3<u32>(75056u, u_input.b, global1.x), vec3<u32>(0u, 0u, 1u)) | select(vec3<u32>(18230u, global1.x, u_input.b), vec3<u32>(1u, u_input.b, 4294967295u), false)) << (vec3<u32>(27531u, _wgslsmith_clamp_u32(114633u, global1.x, 2652u), global1.x) % vec3<u32>(32u)));
    let var_0 = Struct_2(~u_input.b, u_input.a.x, _wgslsmith_f_op_f32(348f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -718f), 1562f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_div_f32(1035f, 1000f), _wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -792f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1060f, var_0.c, 177f, -1190f), vec4<f32>(var_0.c, var_0.c, var_0.c, -147f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 1061f, 503f, -460f) * vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-649f, var_0.c, 654f, -198f), vec4<f32>(-802f, 279f, var_0.c, var_0.c))))))));
    var var_2 = global2[_wgslsmith_index_u32(global1.x, 24u)];
    var var_3 = vec2<bool>(all(!var_2.b.yz), true);
    let x = u_input.a;
    s_output = StorageBuffer(39400u, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(34833i, global0[_wgslsmith_index_u32(1u, 27u)])), vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(var_0.b, 5376i, global0[_wgslsmith_index_u32(75822u, 27u)]))), ~(u_input.a.x >> (global1.x % 32u)));
}

