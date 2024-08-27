struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(17750u, 0u, 0u, 0u), vec4<u32>(18405u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 10860u, 0u, 4294967295u), vec4<u32>(44613u, 4294967295u, 27005u, 1256u), vec4<u32>(43232u, 0u, 6406u, 1u), vec4<u32>(75888u, 4294967295u, 4294967295u, 1800u), vec4<u32>(79207u, 805u, 0u, 61639u), vec4<u32>(4294967295u, 4294967295u, 33865u, 25119u), vec4<u32>(22160u, 0u, 25983u, 1u), vec4<u32>(1u, 1u, 1u, 1407u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 21877u, 0u, 4294967295u), vec4<u32>(1u, 59093u, 4294967295u, 4294967295u), vec4<u32>(1u, 2158u, 18510u, 0u), vec4<u32>(0u, 93120u, 23436u, 0u), vec4<u32>(9299u, 0u, 1u, 13722u), vec4<u32>(18910u, 0u, 1u, 0u), vec4<u32>(1289u, 1u, 1u, 55886u), vec4<u32>(0u, 90275u, 67371u, 0u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(2835u, 1u, 4873u, 0u), vec4<u32>(71535u, 0u, 71467u, 13529u), vec4<u32>(69809u, 26531u, 0u, 0u), vec4<u32>(1u, 108344u, 4294967295u, 1u), vec4<u32>(32782u, 19623u, 1u, 1u), vec4<u32>(1u, 4294967295u, 47629u, 56538u), vec4<u32>(0u, 36447u, 11945u, 1u), vec4<u32>(10257u, 15466u, 4294967295u, 33092u));

var<private> global2: array<Struct_2, 21>;

var<private> global3: vec2<i32>;

var<private> global4: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(806f, 1000f, Struct_1(vec2<bool>(true, true))), Struct_3(494f, 168f, Struct_1(vec2<bool>(true, false))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    var var_0 = Struct_1(vec2<bool>(all(!global0[_wgslsmith_index_u32(reverseBits(113u), 4u)]), true));
    global3 = u_input.a;
    global2 = array<Struct_2, 21>();
    global4 = array<Struct_3, 2>();
    var var_1 = 4294967295u;
    return arg_1;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_div_vec3_u32(~vec3<u32>(6378u, 17131u, 50300u), firstTrailingBit(vec3<u32>(4294967295u, 12527u, 46622u))));
    global1 = array<vec4<u32>, 29>();
    global0 = array<vec2<bool>, 4>();
    var var_2 = 913u;
    return !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(60402u, 0u, 4294967295u)), vec3<u32>(~91966u, 1u, func_3(vec3<f32>(-187f, -216f, -494f), 0u)) >> (min(_wgslsmith_clamp_vec3_u32(vec3<u32>(9170u, 4294967295u, 4294967295u), vec3<u32>(1u, 14336u, 27712u), vec3<u32>(19915u, 1u, 4294967295u)), vec3<u32>(1u, 1u, 38772u)) % vec3<u32>(32u))), 4u)];
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = select(any(vec3<bool>(false, arg_1.a.a.x, true)), select(false, arg_1.a.a.x, (u_input.b >> (8876u % 32u)) == _wgslsmith_mult_i32(-2147483647i, u_input.c.x)), !(!all(vec4<bool>(false, arg_1.d, arg_1.a.a.x, arg_1.a.a.x)))) & false;
    let var_1 = firstLeadingBit(0i);
    var var_2 = Struct_1(!(!select(vec2<bool>(arg_1.a.a.x, arg_1.a.a.x), !global0[_wgslsmith_index_u32(1u, 4u)], func_2(global3.x, u_input.c))));
    let var_3 = select(select(vec3<bool>(any(select(vec3<bool>(arg_1.d, var_2.a.x, var_2.a.x), vec3<bool>(arg_1.d, arg_1.d, true), true)), var_2.a.x, false), vec3<bool>(_wgslsmith_f_op_f32(-arg_3.x) >= _wgslsmith_f_op_f32(-306f - arg_3.x), !(326f == arg_3.x), !all(vec3<bool>(var_2.a.x, arg_1.d, arg_1.d))), !select(vec3<bool>(true, arg_1.a.a.x, true), select(vec3<bool>(false, arg_1.d, true), vec3<bool>(true, false, true), vec3<bool>(var_2.a.x, true, true)), vec3<bool>(true, true, true))), !vec3<bool>(_wgslsmith_f_op_f32(round(arg_2.x)) < _wgslsmith_f_op_f32(floor(arg_2.x)), false, true), vec3<bool>(var_2.a.x, any(!(!global0[_wgslsmith_index_u32(arg_1.b.x, 4u)])), var_2.a.x));
    global4 = array<Struct_3, 2>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 622f, true))), arg_2.x, true)), 603f, false)) - arg_1.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 21>();
    let var_0 = vec2<i32>(-1i, u_input.a.x);
    global1 = array<vec4<u32>, 29>();
    var var_1 = _wgslsmith_f_op_f32(round(-127f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(abs(4294967295u), global2[_wgslsmith_index_u32(reverseBits(2478u), 21u)], vec2<f32>(695f, 711f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 601f)))), _wgslsmith_f_op_f32(f32(-1f) * -777f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1887f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f - -112f))))));
    global2 = array<Struct_2, 21>();
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f * _wgslsmith_div_f32(-1030f, -216f))) * 667f), _wgslsmith_f_op_f32(abs(-336f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), vec3<i32>(~76320i, var_0.x, -2190i), ~firstTrailingBit(vec2<u32>(1u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-564f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-441f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3196f + 1671f)))));
}

