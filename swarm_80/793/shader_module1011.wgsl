struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(1i, 0i, 2147483647i), Struct_1(0i, 1517f), true, vec4<u32>(4294967295u, 1u, 4294967295u, 1u), Struct_1(39994i, 1000f));

var<private> global2: vec3<f32> = vec3<f32>(-1069f, 1876f, 414f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = u_input.c.x;
    var var_1 = Struct_1(-2147483647i, -743f);
    var_1 = Struct_1(~firstTrailingBit(~arg_3.x), global2.x);
    global1 = Struct_2(global1.a, global1.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(918f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-373f + -471f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)) + global1.e.b), global1.d, Struct_1(_wgslsmith_clamp_i32(1i, arg_3.x, u_input.b.x), 973f));
    var var_2 = global2.x;
    return Struct_2(vec3<i32>(var_1.a, arg_3.x, -(~1i)), Struct_1(arg_1.x, _wgslsmith_f_op_f32(-arg_0)), true, global1.d >> (vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(59023u, 4294967295u, u_input.e.x, 47127u), global1.d >> (vec4<u32>(7508u, global1.d.x, global1.d.x, 1u) % vec4<u32>(32u))), global1.d.x, _wgslsmith_add_u32(max(22073u, 4294967295u), ~global1.d.x), _wgslsmith_div_u32(global1.d.x, _wgslsmith_add_u32(var_0, 0u))) % vec4<u32>(32u)), Struct_1(u_input.a, -1876f));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-553f, -559f, 2597f), _wgslsmith_div_vec3_f32(vec3<f32>(global1.e.b, arg_1, arg_0.e.b), vec3<f32>(-368f, arg_0.b.b, global2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b, arg_0.b.b, -1000f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(644f, arg_0.e.b, global1.e.b))))))))));
    let var_1 = !(!vec3<bool>(global1.c, !(!global1.c), all(select(vec3<bool>(global1.c, true, global1.c), vec3<bool>(global1.c, true, arg_0.c), arg_0.c))));
    let var_2 = 524f;
    global0 = global1.c;
    let var_3 = global1.d;
    return all(vec2<bool>(global1.c, all(select(var_1, var_1, select(var_1, vec3<bool>(false, true, arg_0.c), var_1)))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = true;
    let var_1 = func_2(global2.x, vec2<i32>((~global1.b.a | global1.a.x) ^ ~(~(-17243i)), ~global1.a.x), !(~arg_0 >= _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global1.d, global1.d), ~4294967295u)), global1.a);
    global2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -920f), 724f, _wgslsmith_f_op_f32(var_1.b.b * -922f))));
    var var_2 = func_2(_wgslsmith_f_op_f32(global1.b.b * 866f), _wgslsmith_sub_vec2_i32(u_input.b.yx, var_1.a.xx), func_3(Struct_2(vec3<i32>(u_input.d ^ u_input.a, abs(-29906i), ~1i), Struct_1(2147483647i, _wgslsmith_f_op_f32(global1.e.b - -1936f)), !global1.c, ~vec4<u32>(0u, arg_0, var_1.d.x, global1.d.x), Struct_1(~global1.e.a, _wgslsmith_f_op_f32(var_1.b.b + 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f) * global1.b.b), var_1.a.x), firstLeadingBit(var_1.a)).b;
    let var_3 = Struct_1(~firstTrailingBit(0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.e.b), 1668f)))));
    return any(select(vec4<bool>(var_1.c, var_1.c, var_0, var_1.c), vec4<bool>(true, var_0, false, any(vec2<bool>(true, false)) || var_0), select(!vec4<bool>(true, true, false, var_0), select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(global1.c, var_0, global1.c, global1.c), false | var_0), select(!vec4<bool>(global1.c, false, true, true), select(vec4<bool>(false, true, var_1.c, false), vec4<bool>(var_1.c, var_0, false, false), vec4<bool>(true, var_0, var_1.c, var_1.c)), any(vec2<bool>(var_0, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = all(vec2<bool>(true, global1.c));
    var var_0 = vec4<bool>(true, !all(!(!vec3<bool>(true, global1.c, global1.c))), select(!func_1(global1.d.x) || (u_input.c.x < firstLeadingBit(10742u)), false, any(vec4<bool>(global1.c, global1.c & global1.c, all(vec3<bool>(global1.c, global1.c, global1.c)), false))), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(global1.d.zzz, vec3<u32>(u_input.c.x, global1.d.x, global1.d.x)), abs(global1.d.x), 36029u << (global1.d.x % 32u))), _wgslsmith_mod_vec3_u32(global1.d.xwx, vec3<u32>(96300u >> (u_input.e.x % 32u), global1.d.x >> (36109u % 32u), 51525u << (global1.d.x % 32u)) ^ global1.d.zzy), firstLeadingBit(~countOneBits(select(0u, 50142u, false))));
}

