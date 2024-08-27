struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 4294967295u, 1u);

var<private> global1: array<Struct_1, 24>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global3: vec3<u32>;

var<private> global4: vec2<i32> = vec2<i32>(-20028i, 39136i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>) -> bool {
    var var_0 = vec3<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(1546f + 1f));
    let var_1 = ~vec4<i32>(~_wgslsmith_add_i32(global4.x, global4.x), global4.x ^ global4.x, global4.x, _wgslsmith_dot_vec4_i32(countOneBits(max(vec4<i32>(global4.x, -2147483647i, 2147483647i, global4.x), vec4<i32>(global4.x, -53652i, -19534i, global4.x))), vec4<i32>(1i, global4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.x, global4.x), vec2<i32>(-39379i, global4.x)), _wgslsmith_mod_i32(1i, -7483i))));
    let var_2 = countOneBits(_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(19884u, 42108u, global3.x, 7771u)), ~(~countOneBits(vec4<u32>(33986u, 1u, global3.x, global0.x))), select(select(vec4<u32>(global0.x, 20005u, global0.x, global3.x), vec4<u32>(54854u, 30634u, 80853u, 4294967295u), vec4<bool>(true, arg_1.x, true, false)) ^ ~vec4<u32>(global3.x, 1u, u_input.b, 146448u), ~max(vec4<u32>(u_input.a.x, arg_0.a, 10221u, global3.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global3.x)), true)));
    global1 = array<Struct_1, 24>();
    let var_3 = global1[_wgslsmith_index_u32(92562u, 24u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))) * -1576f) == var_0.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(abs(u_input.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(828f, 909f, 423f, -902f) - vec4<f32>(257f, -381f, -1108f, -111f))))), ~(~(~global0.wwx)));
    return vec4<bool>(func_3(Struct_1(16733u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(516f, 827f, var_0.b.x, 275f))), ~global0.yxz), vec3<bool>(global2.x, true, true), select(global2.xx, !(!vec2<bool>(global2.x, global2.x)), global2.yx)), true, ~_wgslsmith_clamp_i32(global4.x << (4294967295u % 32u), -global4.x, min(-2147483647i, global4.x)) > abs(min(-11152i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -8553i, 2147483647i), vec4<i32>(0i, global4.x, -1i, 3154i)))), global2.x);
}

fn func_1() -> i32 {
    var var_0 = global2.x;
    let var_1 = !select(select(select(vec4<bool>(global2.x, global2.x, false, false), func_2(), true), select(!vec4<bool>(true, global2.x, global2.x, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, true, true)), !vec4<bool>(global2.x, global2.x, false, global2.x)), any(vec3<bool>(global2.x, global2.x, false))), !select(func_2(), vec4<bool>(global2.x, true, global2.x, true), !global2.x), false);
    var var_2 = global1[_wgslsmith_index_u32(0u, 24u)];
    var_2 = global1[_wgslsmith_index_u32(214u | var_2.c.x, 24u)];
    global3 = vec3<u32>(37877u, global3.x, 1u) >> (vec3<u32>(4294967295u, var_2.a, 1u) % vec3<u32>(32u));
    return -66177i;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~vec2<i32>(-func_1(), min(_wgslsmith_sub_i32(1i, 1i), select(-17875i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global4.x, global4.x, 2147483647i), vec4<i32>(global4.x, 21707i, 2147483647i, 1i)), true)));
    let var_0 = !vec4<bool>(all(vec2<bool>(global2.x | global2.x, global2.x)), false, false, true);
    let var_1 = global4.x;
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(407u, _wgslsmith_sub_u32(0u, u_input.b)), 24u)];
    var_2 = Struct_1(abs(firstTrailingBit(global3.x)), _wgslsmith_f_op_vec4_f32(-var_2.b), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(77040u, global0.x, global0.x), ~var_2.c) >> ((min(u_input.a, u_input.a) | vec3<u32>(var_2.a, 53116u, global3.x)) % vec3<u32>(32u))));
    let var_3 = select(~vec4<u32>(18735u, 0u, global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(90402u, global3.x, 0u, 1u) & vec4<u32>(u_input.a.x, global0.x, global0.x, global3.x), vec4<u32>(110201u, 1u, 1u, 32045u))), vec4<u32>(31930u, ~84863u, ~u_input.b | _wgslsmith_dot_vec4_u32(vec4<u32>(20346u, 26101u, 1u, 4294967295u) << (vec4<u32>(global0.x, global3.x, 0u, 0u) % vec4<u32>(32u)), vec4<u32>(0u, global0.x, 14337u, 8734u) | vec4<u32>(30079u, global0.x, 116173u, global0.x)), ~min(max(0u, 65193u), 0u)), select(!(!select(var_0, var_0, true)), select(!vec4<bool>(global2.x, var_0.x, true, global2.x), !(!vec4<bool>(false, false, global2.x, false)), _wgslsmith_clamp_i32(global4.x, 29728i, 8990i) < select(-1i, global4.x, var_0.x)), select(var_0, var_0, true)));
    let var_4 = Struct_1(global3.x, _wgslsmith_div_vec4_f32(var_2.b, var_2.b), var_2.c);
    global1 = array<Struct_1, 24>();
    global3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.c.x);
}

