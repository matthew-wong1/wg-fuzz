struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 11273u, 18295u, 66987u);

var<private> global1: array<bool, 29>;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 10>;

var<private> global4: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(41529u, 7458u, 1u, 4294967295u), vec4<u32>(0u, 77012u, 5038u, 16568u), vec4<u32>(0u, 4294967295u, 13473u, 0u), vec4<u32>(1u, 0u, 42860u, 52612u), vec4<u32>(27615u, 1u, 1u, 3220u), vec4<u32>(4294967295u, 94329u, 10445u, 4294967295u), vec4<u32>(1u, 1u, 10888u, 0u), vec4<u32>(19242u, 23414u, 25658u, 1u), vec4<u32>(10565u, 46309u, 1u, 31115u), vec4<u32>(54732u, 4294967295u, 40843u, 12118u), vec4<u32>(1u, 91503u, 31796u, 58815u), vec4<u32>(46833u, 41608u, 1u, 58673u), vec4<u32>(86483u, 43243u, 4294967295u, 12796u), vec4<u32>(4294967295u, 4294967295u, 77703u, 0u), vec4<u32>(71112u, 0u, 4294967295u, 1u), vec4<u32>(10971u, 34246u, 25309u, 61235u), vec4<u32>(106547u, 26984u, 0u, 51067u), vec4<u32>(25703u, 1u, 36329u, 4294967295u), vec4<u32>(4215u, 4294967295u, 37745u, 1u), vec4<u32>(34088u, 4294967295u, 4294967295u, 18636u), vec4<u32>(0u, 86774u, 4294967295u, 70267u), vec4<u32>(4294967295u, 1u, 67740u, 1u), vec4<u32>(60742u, 1u, 0u, 1u), vec4<u32>(44407u, 0u, 76573u, 1u), vec4<u32>(4294967295u, 60725u, 0u, 1u), vec4<u32>(171391u, 24178u, 73410u, 64299u), vec4<u32>(0u, 1u, 1u, 67680u), vec4<u32>(0u, 1u, 4294967295u, 38605u), vec4<u32>(1u, 43590u, 4294967295u, 685u), vec4<u32>(62563u, 4294967295u, 55070u, 43265u), vec4<u32>(67807u, 4294967295u, 0u, 63613u), vec4<u32>(48092u, 0u, 0u, 4294967295u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> bool {
    let var_0 = !select(vec2<bool>(arg_1.a, true), vec2<bool>(!global1[_wgslsmith_index_u32(116844u, 29u)], false), all(select(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(global0.x, 29u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], false, true), !vec3<bool>(arg_1.a, arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 29u)]))));
    var var_1 = -(~(select(-vec4<i32>(-32913i, global2.x, 55742i, -1746i), -vec4<i32>(u_input.a.x, global2.x, global2.x, 19551i), select(vec4<bool>(global1[_wgslsmith_index_u32(8627u, 29u)], global1[_wgslsmith_index_u32(global0.x, 29u)], true, var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 29u)], true, var_0.x, true), false)) >> (firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(2647u, global0.x), 32u)]) % vec4<u32>(32u))));
    var var_2 = ~(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(65274u, global0.x, 66122u, 4294967295u), vec4<u32>(global0.x, global0.x, global0.x, global0.x)) ^ 52678u)));
    global4 = array<vec4<u32>, 32>();
    return min(global0.x, 94131u) >= global0.x;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -432f) + _wgslsmith_f_op_f32(max(-555f, 1328f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(step(916f, 1424f))), 603f))));
    var var_1 = vec3<bool>(true, func_3(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0))))), arg_1.b), global1[_wgslsmith_index_u32(6693u >> (_wgslsmith_mod_u32(global0.x, ~1u) % 32u), 29u)]);
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_1.a.a.x, global0.x), firstLeadingBit(select(0u, arg_1.a.a.x, global1[_wgslsmith_index_u32(9641u, 29u)]) >> (_wgslsmith_mult_u32(global0.x, global0.x) % 32u)), 0u, 4294967295u), _wgslsmith_mult_vec4_u32(min(~countOneBits(vec4<u32>(1u, global0.x, global0.x, global0.x)), vec4<u32>(_wgslsmith_add_u32(57149u, 58108u), firstLeadingBit(19364u), global0.x >> (arg_1.a.a.x % 32u), ~57428u)), min(_wgslsmith_add_vec4_u32(global4[_wgslsmith_index_u32(1u, 32u)], firstLeadingBit(global4[_wgslsmith_index_u32(1u, 32u)])), global4[_wgslsmith_index_u32(~(~arg_1.a.a.x), 32u)])));
    let var_2 = any(select(!select(select(vec4<bool>(true, true, arg_0, var_1.x), vec4<bool>(arg_1.b.a, true, global1[_wgslsmith_index_u32(arg_1.a.a.x, 29u)], arg_0), true), vec4<bool>(true, arg_0, var_1.x, false), select(vec4<bool>(var_1.x, arg_0, arg_1.b.a, false), vec4<bool>(arg_1.b.a, arg_0, var_1.x, arg_1.b.a), true)), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.a.x, 29u)], false, var_1.x, false), vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], any(var_1.zy) & var_1.x, false)));
    global3 = array<Struct_2, 10>();
    return ~1u;
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, global0.x ^ _wgslsmith_sub_u32(arg_0, 42833u)), 29u)];
    let var_1 = false;
    global2 = u_input.a;
    var var_2 = global4[_wgslsmith_index_u32(1u, 32u)];
    global1 = array<bool, 29>();
    return vec3<u32>(~(~global0.x), _wgslsmith_clamp_u32(func_2(all(vec3<bool>(var_1, global1[_wgslsmith_index_u32(1u, 29u)], true)), Struct_4(Struct_1(vec3<u32>(global0.x, arg_0, var_2.x)), Struct_3(false))), ~4294967295u, ~1u) & min(1u, arg_0), ~(~(~var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -304f;
    global4 = array<vec4<u32>, 32>();
    var var_1 = 909f;
    global1 = array<bool, 29>();
    var var_2 = !(!vec2<bool>(true, any(!vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(global0.x, 29u)], global1[_wgslsmith_index_u32(global0.x, 29u)]))));
    let var_3 = Struct_1(func_1(global0.x));
    var var_4 = _wgslsmith_mod_u32(global0.x, ~global0.x);
    let var_5 = Struct_4(Struct_1(global0.yyz), Struct_3(all(select(vec4<bool>(var_2.x, false, false, true), select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(false, true, var_2.x, false), vec4<bool>(false, true, true, var_2.x)), true))));
    var var_6 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1188f, _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(846f * _wgslsmith_div_f32(var_0, 1311f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, var_0, 1122f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-604f, -620f, var_0, 1147f) + vec4<f32>(var_0, var_0, var_0, 484f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1027f, -182f, 515f, -1937f), vec4<f32>(var_0, var_0, 1099f, -1000f))))), -2147483647i < u_input.a.x)), vec4<bool>(all(vec4<bool>(false, false, true, any(vec3<bool>(var_2.x, global1[_wgslsmith_index_u32(global0.x, 29u)], true)))), global1[_wgslsmith_index_u32(global0.x, 29u)], select(all(select(vec2<bool>(var_5.b.a, false), vec2<bool>(false, global1[_wgslsmith_index_u32(global0.x, 29u)]), vec2<bool>(false, var_5.b.a))), any(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(4610u, 29u)])), any(!vec4<bool>(false, true, true, var_5.b.a))), all(vec2<bool>(true, func_3(-314f, var_5.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(466f, var_6.x, var_0, -1502f)))))), ~max(reverseBits(vec4<i32>(-1i, 0i, global2.x, u_input.a.x)), ~(vec4<i32>(-3942i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x))), vec4<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a.x, 3771u, 51901u, global0.x), vec4<u32>(var_5.a.a.x, global0.x, var_5.a.a.x, 1u)), vec4<u32>(_wgslsmith_mod_u32(1u, 4294967295u), global0.x, global0.x & 61067u, var_3.a.x)), ~func_1(global0.x).x, global0.x, 1u), u_input.a.x, u_input.a.x);
}

