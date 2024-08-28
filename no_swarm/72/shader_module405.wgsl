struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.xz)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, arg_1.b.x, arg_1.b.x, -365f)) - arg_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b))), true)), arg_1.c, arg_1.d);
    let var_1 = false;
    global0 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(trunc(var_0.a.x));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global1 = arg_0.d;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1737f)))), _wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b)), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(689f * arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(round(-1000f))), vec4<bool>(any(vec3<bool>(true, arg_0.c, arg_0.c)), !arg_0.c, arg_0.c, arg_0.c)))), arg_0.c, 1u);
    let var_1 = ~u_input.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.b.xy * arg_0.b.xx), _wgslsmith_div_vec2_f32(arg_0.b.yy, arg_0.b.zx))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(618f, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(arg_0.b, _wgslsmith_f_op_vec4_f32(arg_0.b * var_0.b)))) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x))), -1356f, arg_0.b.x, _wgslsmith_f_op_f32(floor(-2441f)))), true, min(~13841u, u_input.b));
    let var_3 = firstLeadingBit(u_input.c);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(arg_0.b.zz)), _wgslsmith_f_op_vec2_f32(abs(var_2.a)), vec2<bool>(false, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_2.a, vec2<f32>(183f, arg_0.a.x))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(984f + arg_0.b.x) + _wgslsmith_div_f32(var_0.b.x, arg_0.b.x)), -573f)), _wgslsmith_f_op_vec4_f32(ceil(var_0.b)), true, _wgslsmith_dot_vec4_u32(abs((vec4<u32>(var_2.d, u_input.b, var_2.d, var_2.d) >> (vec4<u32>(43342u, var_2.d, 1u, var_2.d) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.d, 43259u, u_input.b, u_input.b), vec4<u32>(u_input.a, 37347u, arg_0.d, var_2.d)) % vec4<u32>(32u))), ~vec4<u32>(36727u, 4294967295u, select(4859u, 0u, var_2.c), ~var_2.d)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1709f)) * 1089f) <= _wgslsmith_f_op_f32(min(205f, _wgslsmith_f_op_f32(134f + -980f)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.b.zy), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(arg_2.b)))), arg_2.c, 1u);
    var var_2 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.b.ww), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x - -602f))), _wgslsmith_f_op_f32(func_2(max(vec3<u32>(4294967295u, 17400u, 67406u), vec3<u32>(43383u, arg_1, var_1.d)), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.a.x, -836f), arg_2.c, 38386u), vec4<i32>(-2147483647i, u_input.c, u_input.c, -2147483647i) & vec4<i32>(u_input.c, -54329i, arg_0, u_input.c), abs(-2147483647i))), arg_2.a.x, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(arg_2.b.x - 1258f))), true, reverseBits(~var_1.d)));
    global0 = array<Struct_1, 31>();
    let var_3 = abs(firstLeadingBit(min(_wgslsmith_add_vec3_i32(vec3<i32>(-54377i, arg_0, 65441i), vec3<i32>(0i, arg_0, 7858i)), vec3<i32>(arg_0, 9098i, 0i))) & -firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 27667i, u_input.c), vec3<i32>(arg_0, arg_0, -1i))));
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec2<bool>(all(vec2<bool>(true, true)), true));
    var var_1 = vec3<i32>(max(2147483647i, func_1(u_input.c, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 31u)]) << (u_input.a % 32u)), u_input.c, u_input.c) | vec3<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c) << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), abs(vec2<i32>(u_input.c, 14470i) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)))), u_input.c);
    let var_2 = !vec2<bool>(true, !(~u_input.b < 5682u));
    let var_3 = u_input.a;
    var var_4 = !(!func_3(Struct_1(vec2<f32>(118f, 1000f), _wgslsmith_div_vec4_f32(vec4<f32>(873f, -1955f, -423f, -1000f), vec4<f32>(3171f, 786f, -628f, -624f)), var_2.x && var_2.x, 4294967295u)).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, u_input.b, 1u), 0u, -min(vec3<i32>(max(-19191i, 55753i), reverseBits(var_1.x), _wgslsmith_mult_i32(17780i, -16608i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-40412i, 0i, var_1.x), vec3<i32>(6012i, 0i, 33812i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 40007i, -2147483647i), vec3<i32>(2147483647i, 6995i, u_input.c)))), 0i);
}

