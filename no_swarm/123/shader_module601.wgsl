struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(1i, -64767i, i32(-2147483648)), true);

var<private> global1: array<vec4<f32>, 2>;

var<private> global2: array<bool, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec3<i32> {
    var var_0 = min(u_input.b.x, arg_1);
    let var_1 = 21374u;
    var_0 = arg_1;
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~8899u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u & var_1, var_1), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, 22135u), 2938u & u_input.b.x)), 12945u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~0u, var_1 | var_1, firstLeadingBit(4214u)), _wgslsmith_add_u32(arg_1, var_1))), select(~(max(vec4<u32>(var_1, arg_1, 46717u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.b.x, 0u)) ^ abs(vec4<u32>(5864u, arg_1, 5639u, var_1))), ~vec4<u32>(arg_1, 38281u << (0u % 32u), _wgslsmith_sub_u32(4784u, 1u), 0u >> (0u % 32u)), (min(53307u, u_input.b.x) >= 1u) & false));
    global2 = array<bool, 11>();
    return vec3<i32>(abs(30795i), arg_0.a.b.x, -21899i);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(Struct_3(Struct_2(func_3(Struct_4(Struct_3(Struct_2(vec3<i32>(global0.a.x, 0i, global0.a.x), false), vec2<i32>(global0.a.x, global0.a.x))), ~u_input.b.x), false), firstLeadingBit(max(-vec2<i32>(-2147483647i, global0.a.x), -vec2<i32>(-48232i, -2147483647i)))));
    var_0 = Struct_4(Struct_3(Struct_2(vec3<i32>(~var_0.a.a.a.x, -40165i, -9477i), true), global0.a.zx));
    var var_1 = select(select(select(vec3<bool>(var_0.a.a.b, all(vec2<bool>(false, false)), true), select(vec3<bool>(var_0.a.a.b, false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(true, false, false), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], false)), select(vec3<bool>(false, true, var_0.a.a.b), vec3<bool>(var_0.a.a.b, false, global2[_wgslsmith_index_u32(u_input.a, 11u)]), var_0.a.a.b)), select(select(vec3<bool>(global0.b, false, global0.b), vec3<bool>(var_0.a.a.b, global2[_wgslsmith_index_u32(8905u, 11u)], global0.b), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true, true)), vec3<bool>(true, true, true), var_0.a.a.b)), vec3<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), !select(vec3<bool>(var_0.a.a.b, true, var_0.a.a.b), vec3<bool>(global0.b, true, false), select(vec3<bool>(var_0.a.a.b, false, var_0.a.a.b), vec3<bool>(true, global2[_wgslsmith_index_u32(12369u, 11u)], false), var_0.a.a.b))), select(select(vec3<bool>(true, true, !var_0.a.a.b), select(vec3<bool>(global0.b, global2[_wgslsmith_index_u32(20131u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec3<bool>(false, var_0.a.a.b, global2[_wgslsmith_index_u32(27836u, 11u)]), vec3<bool>(true, var_0.a.a.b, global2[_wgslsmith_index_u32(u_input.a, 11u)]), global0.b), vec3<bool>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)], var_0.a.a.b)), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global0.b)), select(vec3<bool>(global2[_wgslsmith_index_u32(select(4294967295u, 34370u, global2[_wgslsmith_index_u32(u_input.a, 11u)]), 11u)], !var_0.a.a.b, all(vec4<bool>(true, true, global0.b, global0.b))), vec3<bool>(false, 65315i <= global0.a.x, all(vec4<bool>(global2[_wgslsmith_index_u32(17428u, 11u)], false, global0.b, var_0.a.a.b))), _wgslsmith_f_op_f32(ceil(-128f)) >= -1102f), 35239i != global0.a.x), global0.b || false);
    global1 = array<vec4<f32>, 2>();
    var var_2 = Struct_2(var_0.a.a.a, true);
    return var_0.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec3<u32> {
    let var_0 = Struct_4(Struct_3(func_2(), firstTrailingBit(arg_0.a.zx << (countOneBits(vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u)))));
    let var_1 = Struct_1(select(vec2<bool>(any(vec4<bool>(arg_0.b, global0.b, global2[_wgslsmith_index_u32(u_input.a, 11u)], true)), false), vec2<bool>(any(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 11u)], false), vec3<bool>(true, true, global0.b), false)), true), !vec2<bool>(arg_0.b == false, global0.b)));
    let var_2 = ~_wgslsmith_div_i32(arg_0.a.x, global0.a.x) ^ (i32(-1i) * -func_2().a.x);
    global2 = array<bool, 11>();
    let var_3 = var_0.a;
    return _wgslsmith_mod_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))) >> (vec3<u32>(abs(u_input.b.x), 37031u, u_input.b.x) % vec3<u32>(32u)), firstTrailingBit(firstTrailingBit((vec3<u32>(1u, u_input.b.x, 1u) ^ vec3<u32>(u_input.b.x, 4294967295u, 76166u)) | ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
}

fn func_5(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_5(Struct_3(Struct_2(vec3<i32>(0i ^ global0.a.x, 51441i ^ global0.a.x, -1i), true), ~vec2<i32>(global0.a.x, global0.a.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) - _wgslsmith_f_op_f32(round(399f))) - _wgslsmith_f_op_f32(f32(-1f) * -129f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1968f))))))), -150f, -1107f);
    global0 = func_2();
    let var_2 = true;
    global0 = func_2();
    return func_2();
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    return func_5(func_4(func_2(), firstLeadingBit(_wgslsmith_sub_i32(global0.a.x, _wgslsmith_mod_i32(global0.a.x, 0i)))));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = u_input.b.x;
    var var_1 = arg_2;
    global1 = array<vec4<f32>, 2>();
    let var_2 = Struct_1(select(arg_3.yy, !(!vec2<bool>(false, arg_0.a.b)), true));
    global1 = array<vec4<f32>, 2>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(func_1(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global2[_wgslsmith_index_u32(40364u, 11u)]), vec3<bool>(global0.b, global0.b, global2[_wgslsmith_index_u32(u_input.a, 11u)]), global2[_wgslsmith_index_u32(4294967295u, 11u)])), global0.a.xx << (u_input.b % vec2<u32>(32u))), -1i, Struct_4(Struct_3(Struct_2(-global0.a, true), -(~global0.a.xy))), select(!vec3<bool>(true, any(vec2<bool>(false, true)), true), select(select(!vec3<bool>(false, global0.b, global0.b), !vec3<bool>(false, global2[_wgslsmith_index_u32(29518u, 11u)], true), any(vec2<bool>(false, global0.b))), !vec3<bool>(true, global2[_wgslsmith_index_u32(20905u, 11u)], global0.b), !(u_input.b.x >= u_input.b.x)), func_2().b));
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(max(select(vec4<i32>(-61601i, var_0.a.a.a.x, -20173i, -31164i), ~vec4<i32>(-37670i, -5834i, 1i, global0.a.x), any(vec3<bool>(true, true, false))), min(vec4<i32>(18322i, global0.a.x, var_0.a.b.x, global0.a.x), vec4<i32>(9930i, global0.a.x, var_0.a.a.a.x, -744i))), vec4<i32>(-2147483647i, ~(-1i), global0.a.x, var_0.a.a.a.x) >> (vec4<u32>(_wgslsmith_div_u32(0u, u_input.b.x), ~1052u, u_input.a, _wgslsmith_div_u32(1u, u_input.a)) % vec4<u32>(32u))), vec4<i32>(-select(-34993i, global0.a.x, true), abs(-2920i), global0.a.x, abs(var_0.a.b.x) ^ 26788i));
    global0 = var_0.a.a;
    let var_2 = !global0.b;
    let var_3 = Struct_5(Struct_3(var_0.a.a, -vec2<i32>(global0.a.x << (u_input.a % 32u), ~global0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, 4294967295u, u_input.b.x, _wgslsmith_mult_u32(~(~u_input.a), func_4(var_3.a.a, 2147483647i).x)), countOneBits(~firstTrailingBit(vec4<i32>(var_1.x, var_3.a.b.x, 0i, global0.a.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(35059u, u_input.b.x, u_input.a, 1374u), ~vec4<u32>(1u, 20138u, 0u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(184f, 266f, -1003f), vec3<f32>(822f, 180f, 334f), true))))));
}

