struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(14702u, 27616u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 10227u), vec3<u32>(13345u, 0u, 37513u), vec3<u32>(1u, 1u, 1u), vec3<u32>(28741u, 61357u, 49637u), vec3<u32>(4294967295u, 57543u, 1u), vec3<u32>(70221u, 13108u, 69405u), vec3<u32>(0u, 76974u, 53617u), vec3<u32>(28560u, 0u, 47198u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(36365u, 4294967295u, 22238u), vec3<u32>(1u, 2136u, 72188u), vec3<u32>(1u, 15519u, 43254u), vec3<u32>(1u, 5971u, 18994u), vec3<u32>(23631u, 65753u, 1u), vec3<u32>(17124u, 67631u, 0u), vec3<u32>(61217u, 51853u, 1u), vec3<u32>(19282u, 15804u, 30389u), vec3<u32>(6141u, 136472u, 8281u), vec3<u32>(0u, 37030u, 64968u), vec3<u32>(1u, 20061u, 14516u), vec3<u32>(16041u, 4294967295u, 1u), vec3<u32>(9208u, 3831u, 0u), vec3<u32>(43121u, 1u, 35947u), vec3<u32>(11627u, 1u, 71447u), vec3<u32>(28189u, 5286u, 44857u), vec3<u32>(7727u, 0u, 47230u), vec3<u32>(1u, 1u, 29931u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(28274u, 0u, 0u), vec3<u32>(0u, 0u, 1u));

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(805f, -416f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec3<u32>, 31>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-392f, global2.x, global1.b) + vec3<f32>(-365f, global1.b, 895f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global1.b, _wgslsmith_f_op_f32(global1.b + global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1244f, -207f, global1.b))), false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b, 670f, global2.x), vec3<f32>(-795f, 342f, 675f))))))));
    let var_1 = select(vec4<bool>(false, true && any(vec3<bool>(false, true, false)), firstTrailingBit(4294967295u) != ~32651u, true || any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), true || all(vec3<bool>(false, true, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), true)), global1.b > var_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(var_0.x + 1308f))) * 336f)));
    let var_3 = var_0.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, 386f, var_1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1365f - 551f), _wgslsmith_f_op_f32(var_2.b * var_0.x)) + var_0.xx), var_1.x)) - var_0.xy);
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<u32>, 31>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(228f)), _wgslsmith_f_op_f32(1000f - global2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -1092f) - vec2<f32>(298f, 243f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, 250f), vec2<f32>(294f, 947f)))) + _wgslsmith_f_op_vec2_f32(func_3())));
    var var_0 = Struct_1(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - -316f) + _wgslsmith_f_op_f32(ceil(global2.x))) * _wgslsmith_f_op_f32(-1416f * -1472f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global2.x)), global1.b, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(177f))))));
    let var_1 = Struct_1(168f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * global1.b), -655f));
    let var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(var_0.a - 574f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(floor(1029f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1317f))), var_0.a)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = func_2();
    let var_1 = select(vec4<bool>(all(select(!arg_2.zwz, arg_2.ywy, !arg_2.x)), true, true, any(vec2<bool>(all(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), !arg_2.x))), !(!select(vec4<bool>(arg_2.x, false, false, true), !arg_2, !arg_2.x)), arg_2.x);
    var_0 = func_2();
    global1 = arg_3;
    global1 = arg_1;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~0i);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1887f))), -153f);
    var var_1 = select(!vec2<bool>(_wgslsmith_f_op_f32(-global1.a) >= _wgslsmith_f_op_f32(func_1(0u, Struct_1(global1.a, -265f), vec4<bool>(true, false, false, true), Struct_1(global1.b, -839f))), false), vec2<bool>(true, true), false);
    global0 = array<vec3<u32>, 31>();
    global1 = Struct_1(312f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f - global1.b)) + -738f));
    global0 = array<vec3<u32>, 31>();
    var var_2 = select(!select(vec2<bool>(any(vec2<bool>(false, false)), false), vec2<bool>(false, !var_1.x), vec2<bool>(select(var_1.x, false, false), select(var_1.x, false, false))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x), true), !vec2<bool>(false, var_1.x)), vec2<bool>(false, false), !(!var_1.x)), !vec2<bool>(var_1.x, all(vec4<bool>(var_1.x, var_1.x, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x)), select(vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), var_1.x), !vec2<bool>(var_1.x, var_1.x)), !select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(true, false)))), select(vec2<bool>(0i <= _wgslsmith_mult_i32(u_input.a, u_input.a), true), !select(select(vec2<bool>(false, var_1.x), vec2<bool>(false, true), vec2<bool>(true, var_1.x)), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x)), !((global1.a > global2.x) || true)));
    let var_3 = false;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(floor(262f)), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 41077u)), vec2<u32>(1u, 1u) << (min(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 45189u)) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(4294967295u, 31u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x - 755f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(130f)))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))) * _wgslsmith_f_op_f32(global2.x + -896f))));
}

