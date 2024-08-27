struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(-1585f, Struct_1(false)));

var<private> global2: array<bool, 22> = array<bool, 22>(false, false, true, true, false, false, false, true, true, true, false, true, true, true, true, false, true, true, true, true, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = Struct_1(all(!vec3<bool>(true && global2[_wgslsmith_index_u32(arg_0, 22u)], global2[_wgslsmith_index_u32(global0.x, 22u)], !global2[_wgslsmith_index_u32(global0.x, 22u)])));
    return ~u_input.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    var var_0 = vec3<i32>(u_input.a, u_input.b.x, 2147483647i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(arg_0.x, -978f)), Struct_1(any(arg_3.b)));
    let var_2 = abs(vec3<u32>(~global0.x, global0.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(global0.x, 16648u, global0.x)), reverseBits(max(vec3<u32>(4294967295u, 1u, 16745u), vec3<u32>(80574u, 4294967295u, global0.x))))));
    var var_3 = var_1;
    global2 = array<bool, 22>();
    return global0.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = ~1i;
    var var_1 = Struct_4(-(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(4468i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(u_input.a, 1i, 29057i, u_input.a)), func_2(global0.x), 0i)), !arg_1.b.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(43461u), 57049u, ~global0.x, ~global0.x) & ((vec4<u32>(4294967295u, global0.x, 53001u, 15412u) >> (vec4<u32>(global0.x, global0.x, global0.x, 10697u) % vec4<u32>(32u))) | vec4<u32>(global0.x, global0.x, global0.x, 1u)), abs(~vec4<u32>(4294967295u, global0.x, global0.x, global0.x)) & vec4<u32>(func_3(vec4<f32>(475f, 117f, arg_1.a, arg_1.a), Struct_1(arg_1.b.x), arg_1, Struct_3(552f, vec2<bool>(true, global2[_wgslsmith_index_u32(global0.x, 22u)]))), global0.x, select(global0.x, 16513u, false), global0.x), ~firstLeadingBit(~vec4<u32>(51u, 1u, global0.x, 28626u))), Struct_3(214f, vec2<bool>(true, any(vec4<bool>(false, global2[_wgslsmith_index_u32(22101u, 22u)], false, global2[_wgslsmith_index_u32(38090u, 22u)])))));
    var var_2 = Struct_4(-reverseBits(u_input.b), !var_1.b, var_1.c, Struct_3(_wgslsmith_f_op_f32(-890f + 2253f), arg_0.yz));
    global1 = array<Struct_2, 1>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -627f);
    return Struct_1(false);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~1u, 1u)];
    global1 = array<Struct_2, 1>();
    var var_1 = true;
    var var_2 = vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 22u)], !arg_0.a, true);
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(min(_wgslsmith_clamp_i32(arg_2, -1314i, 1i), u_input.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.a, 0i, -46772i), abs(-vec4<i32>(17836i, arg_2, u_input.b.x, arg_2)))), u_input.b.zz);
    return func_1(!vec4<bool>(any(vec4<bool>(true, var_0.b.a, false, global2[_wgslsmith_index_u32(18996u, 22u)])) == true, !(!arg_0.a), 1i >= _wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.yy), arg_0.a), Struct_3(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(select(1078f, _wgslsmith_f_op_f32(max(arg_1.x, var_0.a)), true))), var_2.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1123f - 1170f))))))), func_4(func_1(select(select(vec4<bool>(true, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 22u)], false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 22u)], global2[_wgslsmith_index_u32(global0.x, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], true)), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(global0.x, 22u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.xx, global0.zz), 22u)]), Struct_3(-1454f, !vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1599f))), -551f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-953f * 1120f) + -1644f)), 1i, min(global0.xx, vec2<u32>(global0.x, global0.x << (global0.x % 32u)))));
    let var_1 = reverseBits(select(-select(-vec4<i32>(u_input.b.x, 2147483647i, 16829i, u_input.b.x), -vec4<i32>(-2147483647i, 2147483647i, 16836i, u_input.a), select(vec4<bool>(var_0.b.a, true, false, global2[_wgslsmith_index_u32(global0.x, 22u)]), vec4<bool>(var_0.b.a, true, var_0.b.a, global2[_wgslsmith_index_u32(0u, 22u)]), global2[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(3275i, u_input.a, 1i, -24913i)), ~(~vec4<i32>(0i, -1i, u_input.a, u_input.a))), select(select(!vec4<bool>(true, false, var_0.b.a, global2[_wgslsmith_index_u32(13898u, 22u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 22u)], var_0.b.a, false), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true, false, true), vec4<bool>(var_0.b.a, global2[_wgslsmith_index_u32(1u, 22u)], false, var_0.b.a), true)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(102688u, 22u)], false, var_0.b.a, var_0.b.a), vec4<bool>(var_0.b.a, global2[_wgslsmith_index_u32(global0.x, 22u)], true, true), true), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(global0.x, 22u)], true, true), var_0.b.a), !(true || var_0.b.a))));
    global1 = array<Struct_2, 1>();
    let var_2 = -451f;
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 34057u, global0.x, global0.x) << (vec4<u32>(4294967295u, 47621u, 28855u, global0.x) % vec4<u32>(32u)), vec4<u32>(global0.x, global0.x, 0u, global0.x)), min(~global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2186f, var_0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 4294967295u), global0.x), ~24078u, ~firstLeadingBit(global0.x), 20359u), max(vec4<u32>(_wgslsmith_add_u32(global0.x, 61424u), ~global0.x, 74904u, ~2641u), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 33759u, 450u), vec4<u32>(global0.x, 25476u, global0.x, global0.x)), ~vec4<u32>(global0.x, 1u, 0u, 70120u)))), 22680u, 752f);
}

