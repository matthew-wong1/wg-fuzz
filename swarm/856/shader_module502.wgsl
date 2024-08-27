struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, false, true));

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> f32 {
    global2 = Struct_1(true);
    global2 = Struct_1(global2.a);
    var var_0 = !(arg_1.x >= _wgslsmith_f_op_f32(-global0.x));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.x)))) + _wgslsmith_f_op_f32(arg_1.x - -1095f)) > global0.x, Struct_2(!(!select(vec3<bool>(false, global2.a, true), vec3<bool>(global2.a, global2.a, true), global2.a))), Struct_2(vec3<bool>(any(!vec2<bool>(global2.a, false)), any(vec3<bool>(global2.a, false, true)) || true, select(true, global2.a, 0i == u_input.e.x))), 435f);
    global2 = Struct_1(true);
    return _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_1.x))), _wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -107f)))));
}

fn func_2() -> f32 {
    let var_0 = !select(select(select(vec3<bool>(global2.a, global2.a, global2.a), !vec3<bool>(true, global2.a, global2.a), true), vec3<bool>(1381f != global0.x, false, true), global0.x >= global0.x), vec3<bool>(true, global2.a, !(-466f > global0.x)), !(!global2.a) | true);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.e.x, ~u_input.a, u_input.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(431f, 851f, 521f, 1219f), vec4<f32>(592f, 740f, global0.x, global0.x)))))))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>) -> vec3<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1634f, arg_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -144f))), -1231f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-555f * -364f), arg_0.d)))))));
    global2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d - global0.x)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), 609f, arg_0.d) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(var_0.www, vec3<f32>(1027f, 975f, 1867f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1000f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-316f)), -432f, global0.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.zzz))), select(vec3<bool>(true, false, arg_2.x), vec3<bool>(false, global2.a, true), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.yyw + vec3<f32>(-1647f, -1000f, 2632f))))));
    global2 = Struct_1(true);
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 83226u, 1u), vec3<u32>(32259u, u_input.b.x, 27283u)), u_input.c.x, ~4294967295u), u_input.b.wwz);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.yxw))) - var_0.xzy)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.wwz, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-529f, -1000f, -185f), vec3<f32>(-1826f, -1170f, -1000f)))))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(ceil(arg_0.d))), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(-249f));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.x)), global0.x)), -498f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(global2.a, Struct_2(vec3<bool>(global2.a, global2.a, global2.a)), Struct_2(vec3<bool>(true, true, false)), 753f), false, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-176f, 963f)) - _wgslsmith_f_op_vec3_f32(func_1(Struct_3(global2.a, Struct_2(vec3<bool>(global2.a, false, true)), Struct_2(vec3<bool>(true, global2.a, global2.a)), 650f), !global2.a, select(global1[_wgslsmith_index_u32(87746u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], vec4<bool>(true, global2.a, global2.a, global2.a)))).x), global0.x, 1288f));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -824f, global0.x) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(-1924f, -2022f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-831f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -179f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(579f)))), _wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(f32(-1f) * -190f), 1000f));
    var var_2 = ~3065u;
    var var_3 = Struct_3(-2147483647i >= _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.a, firstLeadingBit(0i)), ~(u_input.e.x & u_input.e.x)), Struct_2(vec3<bool>(global2.a, !any(vec4<bool>(global2.a, false, global2.a, global2.a)), abs(u_input.c.x) > ~u_input.d.x)), Struct_2(vec3<bool>(global2.a, all(vec3<bool>(global2.a, global2.a, false)) | false, true)), _wgslsmith_f_op_f32(-var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, -firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.e.x, 1i, 13936i, u_input.e.x) << (u_input.b % vec4<u32>(32u)))));
}

