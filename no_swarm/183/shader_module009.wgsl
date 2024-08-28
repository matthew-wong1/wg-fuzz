struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: Struct_3;

var<private> global2: array<i32, 21>;

var<private> global3: array<Struct_3, 12>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<bool> {
    global1 = Struct_3(~firstTrailingBit(2147483647i), ~abs(min(global1.b, vec2<u32>(78834u, 1u))) >> (select(max(_wgslsmith_sub_vec2_u32(vec2<u32>(4572u, global1.b.x), global1.b), global1.b), vec2<u32>(1u >> (global1.b.x % 32u), max(1u, global1.b.x)), vec2<bool>(true, true)) % vec2<u32>(32u)), global1.c, 0i);
    global1 = global3[_wgslsmith_index_u32(global1.b.x, 12u)];
    let var_0 = !(!(!any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(vec3<f32>(global1.c.x, global1.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.c.x)), 335f))));
    var var_2 = _wgslsmith_f_op_f32(sign(-1039f));
    return !(!vec3<bool>(var_0, any(vec4<bool>(true, var_0, true, var_0)) | true, false));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(!(!(!(!arg_1))), select(all(func_3()), !arg_1, arg_2.a.x <= -873f), arg_2, arg_2);
    let var_1 = global0[_wgslsmith_index_u32(19134u, 15u)];
    let var_2 = global3[_wgslsmith_index_u32(~(~select(26229u, global1.b.x, func_3().x)), 12u)];
    global2 = array<i32, 21>();
    var var_3 = vec2<bool>(true, arg_1);
    return var_2.d;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> bool {
    global0 = array<Struct_2, 15>();
    let var_0 = select(~(~vec4<i32>(~global2[_wgslsmith_index_u32(1u, 21u)], min(0i, arg_0.x), arg_0.x, global1.a)), max(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a, 757i, -2147483647i, -28367i), vec4<i32>(1i, arg_0.x, 1i, -10975i))), select(firstTrailingBit(vec4<i32>(0i, 47293i, arg_0.x, -1i)), vec4<i32>(7480i, arg_0.x, global2[_wgslsmith_index_u32(global1.b.x, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)]) >> (~vec4<u32>(u_input.a, u_input.a, global1.b.x, 0u) % vec4<u32>(32u)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true))), select(vec4<bool>(true, true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), true | func_3().x), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), false));
    global2 = array<i32, 21>();
    global0 = array<Struct_2, 15>();
    var var_1 = global1.a;
    return all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true & all(vec2<bool>(true, true)), true && any(vec2<bool>(false, true)), !func_3().x)));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = select(vec4<u32>(firstTrailingBit(1u), u_input.a, global1.b.x, _wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(reverseBits(41521u), ~40773u))), ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(53774u, global1.b.x, 4294967295u, u_input.a), vec4<u32>(80878u, 0u, 0u, u_input.a) & vec4<u32>(global1.b.x, 4294967295u, global1.b.x, 14796u))), func_4(vec2<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a, 21u)], -2147483647i), func_2(vec3<i32>(global2[_wgslsmith_index_u32(global1.b.x, 21u)], global2[_wgslsmith_index_u32(62460u, 21u)], global1.a), true, Struct_1(vec3<f32>(arg_0, arg_0, -336f)))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global1.b.x, u_input.a), global1.b) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(403f, arg_0, arg_0) - vec3<f32>(-822f, arg_0, -231f)))), 839f));
    let var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, global1.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(arg_0, -1555f, -1234f)))) + vec3<f32>(454f, arg_0, _wgslsmith_f_op_f32(ceil(arg_0))))));
    let var_3 = -38063i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_2.a));
    return vec3<u32>(~29623u, var_0.x, ~(var_0.x & _wgslsmith_mod_u32(u_input.a, 46683u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(_wgslsmith_f_op_f32(round(global1.c.x)));
    let var_1 = abs(select(abs(_wgslsmith_div_vec3_i32(select(vec3<i32>(0i, global2[_wgslsmith_index_u32(43525u, 21u)], -20343i), vec3<i32>(global1.d, 23098i, global2[_wgslsmith_index_u32(6809u, 21u)]), vec3<bool>(true, true, true)), vec3<i32>(global2[_wgslsmith_index_u32(67338u, 21u)], 1i, -1i) << (vec3<u32>(global1.b.x, 1u, 12592u) % vec3<u32>(32u)))), ~vec3<i32>(-62702i, -2147483647i, abs(2147483647i)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-var_1);
}

