struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4;

var<private> global2: array<i32, 1>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = arg_0;
    var_0 = vec3<i32>(-1i | ~_wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(global2[_wgslsmith_index_u32(1712u, 1u)], arg_0.x, 0i, 24526i)), firstTrailingBit(u_input.a.x), global1.d.e);
    var var_1 = true;
    global0 = true;
    global1 = Struct_4(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.b.a.b.x, u_input.e, 0u, global1.b.a.a)), ~vec4<u32>(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, 0u), u_input.c.x, _wgslsmith_sub_u32(1u, global1.b.a.b.x))), Struct_2(global1.b.a), Struct_3(global1.d.d, true, _wgslsmith_mod_i32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.e), 1u)], abs(abs(u_input.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_1, -334f)), arg_2, arg_2)), _wgslsmith_clamp_i32(select(-2147483647i, arg_0.x, false), ~(-23453i), i32(-1i) * -18993i) << (reverseBits(u_input.e | 1u) % 32u)), Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.d.d, vec3<f32>(global1.b.a.d, -309f, arg_2)) - global1.d.d))), arg_1 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) + arg_1), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(12037u >> (u_input.c.x % 32u), ~global1.b.a.b.x), 1u)], select(countOneBits(-81676i), ~(-2147483647i), false)), vec3<f32>(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_2 - global1.c.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.a.x - global1.d.d.x), _wgslsmith_f_op_f32(min(arg_2, -638f)), false)), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(round(453f)))), ~(~(-47115i))));
    return true;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = global1.b.a;
    var var_1 = !(!vec4<bool>(all(global1.b.a.e), true == (-1i < u_input.d), true, _wgslsmith_sub_u32(global1.a, 99031u) != (4294967295u << (u_input.c.x % 32u))));
    var_0 = Struct_1(reverseBits(~0u), var_0.b, true, var_0.d, vec3<bool>(func_3(~(vec3<i32>(39006i, global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(8030u, 1u)]) | u_input.a.zxz), global1.b.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + -318f) * _wgslsmith_div_f32(-1000f, -1527f))), arg_0, true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.a.x)));
    global0 = var_0.a != 4294967295u;
    return Struct_2(global1.b.a);
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = func_2(global1.b.a.c);
    return global1.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a - arg_1.d) + vec3<f32>(313f, -1000f, arg_1.a.x)))), false, -1i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.d.x, arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, 1000f) * _wgslsmith_f_op_f32(arg_0.a.x * global1.b.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b.a.d))) - global1.d.d.x)), u_input.b);
    let var_1 = _wgslsmith_sub_vec4_i32(u_input.a, firstTrailingBit(min(u_input.a, u_input.a)) >> (vec4<u32>(_wgslsmith_mult_u32(global1.a, 43148u), global1.a, firstTrailingBit(19651u), min(u_input.c.x, 4294967295u)) % vec4<u32>(32u))) | u_input.a;
    var_0 = func_1(_wgslsmith_f_op_f32(func_1(arg_1.a.x).d.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -214f), global1.d.a.x))));
    var var_2 = vec2<bool>(var_0.b, true);
    var var_3 = arg_0.a.x;
    return func_2(!(!(!arg_0.b))).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> Struct_2 {
    let var_0 = func_2(!global1.d.b).a.b.x;
    global2 = array<i32, 1>();
    let var_1 = ~(u_input.a.xxw >> (_wgslsmith_mult_vec3_u32(~global1.b.a.b, ~_wgslsmith_clamp_vec3_u32(arg_3.b.a.b, vec3<u32>(7389u, var_0, 15890u), arg_0.b)) % vec3<u32>(32u)));
    var var_2 = arg_3.b.a.e.x;
    let var_3 = arg_2;
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_3.a, global1.b.a.a, u_input.c.x, 1u), vec4<u32>(arg_0.b.x, arg_1.a.b.x, 4294967295u, 0u) << (vec4<u32>(arg_3.b.a.b.x, 4294967295u, 69669u, 23069u) % vec4<u32>(32u)), vec4<bool>(false, global1.d.b, arg_1.a.e.x, arg_1.a.e.x)), vec4<u32>(0u, 95548u, 4294967295u, global1.b.a.a) ^ select(vec4<u32>(global1.a, global1.b.a.a, 1u, arg_1.a.a), vec4<u32>(0u, 1u, 1u, 0u), vec4<bool>(arg_2.b, var_3.b, false, true))), ~select(global1.b.a.b, _wgslsmith_div_vec3_u32(arg_3.b.a.b, vec3<u32>(0u, var_0, var_0)), global1.c.b), global1.b.a.c, _wgslsmith_f_op_f32(ceil(-1561f)), arg_3.b.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = func_5(func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -898f)), func_1(162f), ~vec2<u32>(16824u, 2693u)), global1.b, Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.d.d, vec3<f32>(-1269f, 162f, global1.b.a.d))))), global1.d.b, _wgslsmith_dot_vec3_i32(u_input.a.wyw, ~(u_input.a.www << (vec3<u32>(global1.b.a.a, 1u, u_input.c.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(776f, _wgslsmith_f_op_f32(-global1.b.a.d), _wgslsmith_f_op_f32(sign(global1.b.a.d)))), _wgslsmith_mod_i32(-1i, -2147483647i)), Struct_4(u_input.e, Struct_2(global1.b.a), func_1(_wgslsmith_f_op_f32(f32(-1f) * -484f)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(select(global1.c.a.x, global1.d.d.x, false)), _wgslsmith_f_op_f32(-global1.d.d.x), _wgslsmith_f_op_f32(-global1.d.d.x)), !(!global1.d.b), ~(~global1.c.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d.a) * _wgslsmith_f_op_vec3_f32(global1.d.d * vec3<f32>(global1.c.a.x, global1.b.a.d, global1.d.a.x))), _wgslsmith_dot_vec2_i32(u_input.a.yw, ~u_input.a.xy))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.a.d * -1000f), _wgslsmith_f_op_f32(-global1.b.a.d), _wgslsmith_f_op_f32(-global1.d.a.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.c.d.x, var_0.a.d, global1.b.a.d), _wgslsmith_f_op_vec3_f32(-global1.c.d))))))), !var_0.a.e.x, global1.c.c, vec3<f32>(var_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(-global1.d.d.x))), -231f), -global1.d.e | u_input.b);
    global0 = any(var_0.a.e.xy);
    let var_2 = global1.b.a.c;
    global0 = !func_2(true).a.c;
    let var_3 = abs(~(-(~(1i << (global1.b.a.a % 32u)))));
    let var_4 = u_input.e;
    global1 = Struct_4(var_4, Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 39887u, var_4, 10957u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.a.b.x, global1.a, 44353u, 35843u), vec4<u32>(39068u, var_0.a.b.x, 0u, 1u))), firstLeadingBit(~global1.b.a.b), global1.d.b, _wgslsmith_f_op_f32(select(func_1(395f).d.x, -797f, false)), vec3<bool>(true, var_0.a.c || true, any(global1.b.a.e.xx)))), func_1(_wgslsmith_f_op_f32(abs(global1.c.a.x))), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer((~(vec2<u32>(30900u, u_input.c.x) >> (var_0.a.b.xx % vec2<u32>(32u))) & ~_wgslsmith_mod_vec2_u32(global1.b.a.b.xy, vec2<u32>(0u, 27828u))) | var_0.a.b.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.d.a.zx))) * vec2<f32>(_wgslsmith_f_op_f32(min(1978f, _wgslsmith_f_op_f32(-2085f + global1.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.d.d.x))))), ~max(1u, global1.b.a.b.x));
}

