struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: array<vec4<bool>, 14>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global3: bool = true;

var<private> global4: array<u32, 14>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = ~_wgslsmith_mult_vec2_i32(max(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(~vec2<i32>(-18348i, 11229i), vec2<i32>(1i, 1i))), max(vec2<i32>(47462i, -4504i), vec2<i32>(30670i, 1i)));
    var var_1 = !(!arg_0.x) || true;
    global3 = arg_0.x && true;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(192f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(963f, 257f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) + _wgslsmith_f_op_f32(select(1112f, 544f, true)))))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -729f) * _wgslsmith_f_op_f32(f32(-1f) * -1553f)))), _wgslsmith_f_op_f32(f32(-1f) * -329f)));
    var_0 = vec2<i32>(var_0.x, var_0.x) & vec2<i32>(21966i, ~var_0.x);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_1(any(!select(vec2<bool>(true, true), select(arg_2, arg_2, arg_2), true)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(reverseBits(vec3<u32>(43999u, arg_1, arg_1)) ^ (vec3<u32>(u_input.a, u_input.b, 4294967295u) >> (vec3<u32>(0u, 53940u, global4[_wgslsmith_index_u32(1u, 14u)]) % vec3<u32>(32u)))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(~arg_1, 14u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~arg_1, 14u)], 14u)], ~1u), select(vec3<u32>(24351u, 4098u, u_input.b), vec3<u32>(1u, arg_1, global4[_wgslsmith_index_u32(4294967295u, 14u)]), false) ^ (vec3<u32>(u_input.a, arg_1, arg_1) & vec3<u32>(29956u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], global4[_wgslsmith_index_u32(4294967295u, 14u)]))) % vec3<u32>(32u)), (min(~vec3<u32>(1u, u_input.a, u_input.b), min(vec3<u32>(35528u, 19870u, 55761u), vec3<u32>(33841u, arg_1, arg_1))) ^ (~vec3<u32>(u_input.b, 23692u, u_input.a) >> (vec3<u32>(u_input.b, global4[_wgslsmith_index_u32(34111u, 14u)], global4[_wgslsmith_index_u32(0u, 14u)]) % vec3<u32>(32u)))) >> (vec3<u32>(0u, func_3(arg_2), 4294967295u) % vec3<u32>(32u))), 29u)];
    global4 = array<u32, 14>();
    let var_2 = ~(abs(vec2<i32>(~16169i, -13590i)) >> (~(~vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(0u, 14u)])) % vec2<u32>(32u)));
    let var_3 = var_0;
    return -559f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<Struct_1, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2066f), -1583f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f - -477f) + _wgslsmith_f_op_f32(func_2(Struct_1(true), 43997u, vec2<bool>(false, false)))) - _wgslsmith_f_op_f32(func_2(Struct_1(false), 34956u >> (1u % 32u), vec2<bool>(true, true))))));
    var var_1 = global2[_wgslsmith_index_u32(~select(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0, u_input.b), 0u), true) | (_wgslsmith_mod_u32(u_input.a, max(~58707u, 12958u)) ^ _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a, 4448u, arg_0, u_input.b), vec4<u32>(39085u, 4294967295u, global4[_wgslsmith_index_u32(7098u, 14u)], u_input.b), true), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, global4[_wgslsmith_index_u32(arg_0, 14u)], global4[_wgslsmith_index_u32(4294967295u, 14u)], 12527u), vec4<u32>(arg_0, 4294967295u, u_input.b, arg_0), vec4<u32>(arg_0, 229u, global4[_wgslsmith_index_u32(0u, 14u)], 4294967295u)))), 29u)];
    var var_2 = -1082f;
    return Struct_1(var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = arg_1;
    global4 = array<u32, 14>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_2 = !(!(!select(!vec2<bool>(false, arg_0.a), !arg_1, arg_1)));
    global0 = array<vec2<u32>, 22>();
    return reverseBits(~select(~vec3<u32>(31172u, global4[_wgslsmith_index_u32(84240u, 14u)], 32441u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(36701u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], global4[_wgslsmith_index_u32(85033u, 14u)]), vec3<u32>(u_input.a, global4[_wgslsmith_index_u32(15408u, 14u)], 36628u)) % vec3<u32>(32u)), abs(vec3<u32>(u_input.b, 4294967295u, 31568u) << (vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 14>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(207f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(590f)), _wgslsmith_f_op_f32(step(705f, 1254f)))))), !any(vec4<bool>(true, true, false, false)) | true))));
    global0 = array<vec2<u32>, 22>();
    let var_2 = vec2<bool>(false, false);
    var var_3 = vec3<u32>(abs(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b, u_input.b, 34585u), 14u)]), 1u, _wgslsmith_mult_u32(select(1u, u_input.b, false) & min(~1u, ~u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(16237u, global4[_wgslsmith_index_u32(1u, 14u)], 44397u), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 65453u, 0u)), vec3<u32>(u_input.b, u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5912u, 14u)], 14u)]), abs(vec3<u32>(5456u, 1u, global4[_wgslsmith_index_u32(4294967295u, 14u)]))), func_4(func_1(4294967295u), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), var_2.x)))));
    let var_4 = func_1(1u);
    let x = u_input.a;
    s_output = StorageBuffer(((-vec3<i32>(2147483647i, 1i, 0i) >> (min(vec3<u32>(1501u, u_input.a, u_input.a), vec3<u32>(global4[_wgslsmith_index_u32(u_input.b, 14u)], var_3.x, 54989u)) % vec3<u32>(32u))) << (~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, global4[_wgslsmith_index_u32(u_input.b, 14u)]), vec3<u32>(43918u, 19347u, 40142u)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-13881i, 0i, ~(-10806i))));
}

