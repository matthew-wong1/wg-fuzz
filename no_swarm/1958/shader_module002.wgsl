struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 20>;

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(0u, 0u, 43808u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 1u, 72507u, 17219u), vec4<u32>(30260u, 69599u, 0u, 72049u), vec4<u32>(0u, 1u, 78464u, 4294967295u), vec4<u32>(0u, 4294967295u, 95345u, 6466u), vec4<u32>(66189u, 4836u, 48117u, 1u), vec4<u32>(26475u, 78872u, 0u, 4294967295u), vec4<u32>(18111u, 21525u, 4294967295u, 1u), vec4<u32>(0u, 282u, 1u, 4294967295u), vec4<u32>(39499u, 0u, 66744u, 59078u), vec4<u32>(40499u, 9643u, 0u, 4294967295u), vec4<u32>(31526u, 0u, 4294967295u, 4176u), vec4<u32>(1u, 5114u, 55999u, 1u), vec4<u32>(1u, 1u, 27976u, 12413u), vec4<u32>(1u, 4294967295u, 17145u, 0u), vec4<u32>(1u, 5935u, 0u, 0u), vec4<u32>(1u, 66951u, 4294967295u, 19396u), vec4<u32>(31455u, 47320u, 0u, 4294967295u), vec4<u32>(74972u, 42471u, 88073u, 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    global2 = array<vec4<u32>, 21>();
    return global2[_wgslsmith_index_u32(global0.c.x, 21u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f))));
    let var_1 = _wgslsmith_clamp_u32(25397u & arg_0.x, 4294967295u, ~1u) >> (global0.d.x % 32u);
    global2 = array<vec4<u32>, 21>();
    global1 = array<bool, 20>();
    let var_2 = any(global0.b);
    return vec4<u32>(~1u, ~arg_0.x, global0.d.x, ~(global0.d.x >> (1u % 32u)) ^ _wgslsmith_dot_vec2_u32(u_input.a.xx, ~global0.c.xx));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(1u, global0.b, max(~vec4<u32>(global0.c.x, 1u, 1u, ~85609u), _wgslsmith_mult_vec4_u32(func_2(vec3<f32>(513f, 171f, -1248f), global0.a, arg_0), vec4<u32>(0u, arg_0.d.x, u_input.a.x, global0.d.x)) << (func_3(vec3<u32>(0u, 1u, arg_0.d.x) | arg_0.c.xwx, _wgslsmith_div_i32(22964i, -35821i), ~arg_0.c.zw, _wgslsmith_mod_i32(1i, 17873i)) % vec4<u32>(32u))), ~(vec3<u32>(4294967295u >> (u_input.a.x % 32u), countOneBits(arg_0.a), 88662u) >> (abs(vec3<u32>(21458u, global0.a, global0.a) >> (global0.c.xwx % vec3<u32>(32u))) % vec3<u32>(32u))));
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c.x, 1u, 0u), vec3<u32>(4294967295u, arg_0.a, arg_0.d.x), var_0.d), arg_0.d), vec3<u32>(4294967295u, _wgslsmith_add_u32(arg_0.d.x, 1u) << (var_0.d.x % 32u), u_input.a.x >> (min(global0.d.x, var_0.a) % 32u))), global0.d.x, _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(var_0.a, var_0.d.x) & ~global0.c.x), ~75483u));
    return all(!vec2<bool>(arg_0.b.x, arg_0.b.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    global1 = array<bool, 20>();
    global2 = array<vec4<u32>, 21>();
    let var_0 = 1388f;
    var var_1 = Struct_1(firstTrailingBit(min(4294967295u, ~global0.c.x)), select(select(global0.b, select(select(global0.b, global0.b, arg_2.x), !global0.b, select(vec2<bool>(global1[_wgslsmith_index_u32(10129u, 20u)], arg_2.x), global0.b, vec2<bool>(arg_1, false))), true), arg_2.zx, select(select(vec2<bool>(true, true), select(arg_2.xx, global0.b, global0.b), var_0 <= 458f), select(global0.b, global0.b, arg_1 && arg_1), select(select(global0.b, global0.b, true), arg_2.zz, any(arg_2.zz)))), vec4<u32>(u_input.a.x, 75975u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~func_2(vec3<f32>(var_0, -644f, -1254f), global0.d.x, Struct_1(16868u, arg_2.yy, global2[_wgslsmith_index_u32(global0.a, 21u)], vec3<u32>(9909u, u_input.a.x, global0.c.x))).wy), _wgslsmith_mult_u32(countOneBits(18068u), u_input.a.x) ^ firstTrailingBit(global0.d.x)), u_input.a.xyy);
    global2 = array<vec4<u32>, 21>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 361f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1245f + -526f) - _wgslsmith_f_op_f32(961f - 764f)))) - 357f), -189f, 847f, _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(-1i, -1i, 15779i, 30256i)), vec4<i32>(1i, firstTrailingBit(1i), 13008i >> (u_input.a.x % 32u), -56815i)), !func_1(Struct_1(u_input.a.x, global0.b, global2[_wgslsmith_index_u32(global0.a, 21u)], global0.c.ywx)), !vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, 4294967295u)), 20u)]))));
    let var_2 = all(!(!(!select(vec3<bool>(false, global0.b.x, true), vec3<bool>(false, false, global0.b.x), vec3<bool>(true, global0.b.x, global1[_wgslsmith_index_u32(global0.a, 20u)])))));
    let var_3 = 65854u;
    let var_4 = Struct_1(max(~abs(4294967295u), global0.c.x), vec2<bool>(func_1(Struct_1(global0.d.x, !global0.b, ~vec4<u32>(0u, global0.a, u_input.a.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, 4294967295u, 4294967295u), vec3<u32>(var_3, 32652u, 1u)))), true), global0.c, vec3<u32>(~max(u_input.a.x, ~4294967295u), 83326u & u_input.a.x, (_wgslsmith_dot_vec3_u32(global0.c.wwy, vec3<u32>(u_input.a.x, u_input.a.x, var_3)) >> (1u % 32u)) << (countOneBits(u_input.a.x | 36876u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, abs(~vec2<i32>(-12267i, 1i) >> ((~u_input.a.wy & vec2<u32>(global0.c.x, u_input.a.x)) % vec2<u32>(32u))), abs(-_wgslsmith_add_vec2_i32(select(vec2<i32>(0i, 13071i), vec2<i32>(0i, -16368i), vec2<bool>(false, true)), -vec2<i32>(-1i, 2131i))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), var_1.x), vec2<f32>(var_1.x, var_1.x))), ~u_input.a.x);
}

