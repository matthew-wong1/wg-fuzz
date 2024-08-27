struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 28>;

var<private> global2: Struct_3 = Struct_3(1u);

var<private> global3: array<u32, 28> = array<u32, 28>(0u, 1u, 43419u, 58291u, 60329u, 0u, 4294967295u, 43633u, 4294967295u, 1u, 0u, 4294967295u, 21926u, 1u, 75460u, 0u, 4294967295u, 55296u, 1u, 0u, 19824u, 72749u, 0u, 4294967295u, 12946u, 17841u, 4294967295u, 1u);

var<private> global4: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 82249u), vec2<u32>(1u, 1u), vec2<u32>(7503u, 0u), vec2<u32>(127492u, 22355u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 110960u), vec2<u32>(27530u, 1u), vec2<u32>(4294967295u, 3710u), vec2<u32>(1u, 26584u), vec2<u32>(6633u, 1u), vec2<u32>(98734u, 0u), vec2<u32>(97958u, 29224u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1611u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    return global4[_wgslsmith_index_u32(global2.a, 16u)];
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(-1612f));
    let var_1 = Struct_2(1926f, _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(-2147483647i, global0.c), global0.c, global0.c), -(~u_input.b.xxw) ^ _wgslsmith_mod_vec3_i32(u_input.b.wxx, abs(vec3<i32>(0i, u_input.b.x, u_input.b.x)))), u_input.b.x, global0.a.zz);
    var var_2 = ~(~_wgslsmith_clamp_u32(~abs(0u), select(global2.a, 4294967295u, true) >> (~36935u % 32u), global0.b.x));
    let var_3 = global0.a.x;
    var var_4 = vec4<bool>(reverseBits(global0.c) >= max(max(-u_input.b.x, -1i), ~_wgslsmith_sub_i32(u_input.b.x, var_1.b.x)), true, global0.e, 1u < u_input.c);
    return any(var_4.xy);
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_3(~(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.c, 20748u), vec4<u32>(8119u, global0.b.x, 0u, 1u)))));
    let var_1 = select(!select(vec4<bool>(any(vec3<bool>(global0.e, global0.e, global0.e)), func_3(vec3<bool>(global0.e, global0.e, true)), !global0.e, u_input.b.x < u_input.b.x), select(!vec4<bool>(true, true, false, global0.e), vec4<bool>(false, false, true, true), select(vec4<bool>(global0.e, global0.e, global0.e, false), vec4<bool>(global0.e, true, true, true), vec4<bool>(global0.e, false, false, false))), !vec4<bool>(false, global0.e, global0.e, global0.e)), vec4<bool>(global0.e, global0.e, global0.e, max(_wgslsmith_mod_i32(global0.c, 0i), u_input.b.x << (1u % 32u)) < (min(u_input.b.x, 0i) << (40428u % 32u))), select(!vec4<bool>(any(vec4<bool>(global0.e, global0.e, false, false)), func_3(vec3<bool>(true, global0.e, true)), true, true), select(!select(vec4<bool>(global0.e, true, true, global0.e), vec4<bool>(false, true, true, false), global0.e), select(select(vec4<bool>(global0.e, true, global0.e, false), vec4<bool>(global0.e, false, global0.e, false), vec4<bool>(global0.e, global0.e, true, global0.e)), !vec4<bool>(true, global0.e, false, global0.e), select(vec4<bool>(global0.e, true, true, true), vec4<bool>(false, false, global0.e, global0.e), global0.e)), !(!vec4<bool>(global0.e, global0.e, global0.e, global0.e))), !select(vec4<bool>(false, true, false, false), select(vec4<bool>(global0.e, global0.e, global0.e, false), vec4<bool>(global0.e, global0.e, global0.e, true), global0.e), select(vec4<bool>(true, true, global0.e, false), vec4<bool>(global0.e, true, global0.e, global0.e), vec4<bool>(global0.e, global0.e, global0.e, true)))));
    global2 = Struct_3(~(global2.a >> (max(~u_input.e, ~global3[_wgslsmith_index_u32(global0.b.x, 28u)]) % 32u)));
    let var_2 = global0.e;
    var var_3 = abs(~(_wgslsmith_mod_u32(global2.a, 1u) & ~1u));
    return vec4<bool>(all(select(!select(var_1.zxz, vec3<bool>(false, true, true), false), vec3<bool>(!var_1.x, true, var_1.x | global0.e), var_1.x)), !(!global0.e), !global0.e | !(!var_1.x), true);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: vec3<bool>) -> Struct_3 {
    return Struct_3(abs(global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(max(u_input.a, _wgslsmith_div_vec2_u32(max(vec2<u32>(global3[_wgslsmith_index_u32(global0.b.x, 28u)], 8830u), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(1u, 28u)])) | vec2<u32>(0u, global0.b.x), func_1(Struct_3(4294967295u), 2905f >= global0.d, global1[_wgslsmith_index_u32(global2.a, 28u)]))));
    global4 = array<vec2<u32>, 16>();
    var var_1 = func_4(2147483647i, -(~(-1i)) & ~global0.c, ~global0.c, select(select(vec3<bool>(any(vec3<bool>(global0.e, global0.e, global0.e)), true, false), vec3<bool>(4294967295u > var_0.x, false, select(global0.e, global0.e, global0.e)), true), vec3<bool>(true, true, true), any(func_2(global0.a.zx)) || func_3(vec3<bool>(global0.e, global0.e, global0.e))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-global0.d), vec3<i32>(global0.c, abs(_wgslsmith_dot_vec2_i32(u_input.b.xz, _wgslsmith_div_vec2_i32(u_input.b.xw, vec2<i32>(u_input.b.x, 10816i)))), firstLeadingBit(0i)), -41233i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.a.zx))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(224f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d)))), u_input.b.x < ~(-2147483647i))));
    let var_3 = vec2<u32>(~firstTrailingBit(firstLeadingBit(776u)), ~max(abs(0u), 11415u)) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_0.x), global4[_wgslsmith_index_u32(global0.b.x, 16u)]), ~_wgslsmith_add_vec2_u32(global0.b, vec2<u32>(var_1.a, global3[_wgslsmith_index_u32(var_1.a, 28u)]))), var_1.a) % vec2<u32>(32u));
    var var_4 = u_input.b.zy;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~(~max(31514u, var_3.x)) << (global2.a % 32u), global0.a.x);
}

