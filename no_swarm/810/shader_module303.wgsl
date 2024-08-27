struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: vec3<bool>;

var<private> global2: array<bool, 9>;

var<private> global3: array<bool, 11> = array<bool, 11>(false, true, true, false, false, false, true, false, false, false, false);

var<private> global4: vec3<i32> = vec3<i32>(-12186i, -37403i, 441i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-135f));
    let var_1 = Struct_2(countOneBits(reverseBits(vec4<i32>(1i, max(-12342i, u_input.c), u_input.c, -global4.x))));
    var var_2 = global1.x;
    var var_3 = Struct_2(var_1.a);
    var var_4 = !(!vec4<bool>(global1.x, true, select(false, all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], true)), global1.x || true), abs(-13437i) <= _wgslsmith_dot_vec4_i32(var_1.a, var_1.a)));
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(func_3(), 31u)];
    return -5333i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec2<f32> {
    let var_0 = vec4<i32>(~global4.x, select(func_2(arg_0, arg_0), _wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(select(u_input.b.x, 2147483647i, arg_0.a), arg_1.a.x)), true), 0i, ~(0i << (1u % 32u)));
    let var_1 = !select(!vec4<bool>(true, true, !arg_2, true), select(select(vec4<bool>(false, global1.x, arg_0.a, true), vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 11u)], global1.x), arg_2), vec4<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, false)), true | arg_2, arg_0.a), !select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(5065u, 9u)], true), vec4<bool>(true, arg_2, arg_0.a, true), false)), vec4<bool>(_wgslsmith_f_op_f32(round(-1996f)) < _wgslsmith_f_op_f32(f32(-1f) * -742f), true, global3[_wgslsmith_index_u32(6940u, 11u)], true));
    var var_2 = !var_1.xwx;
    var var_3 = !((true && global3[_wgslsmith_index_u32(select(abs(30307u), ~1u, true != global2[_wgslsmith_index_u32(arg_3, 9u)]), 11u)]) || any(var_2.yx));
    let var_4 = u_input.a;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(-116f)))), _wgslsmith_f_op_f32(f32(-1f) * -1429f)), -1267f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 11>();
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, -1000f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1074f, -278f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(true), Struct_2(u_input.b), global1.x, 1u)), vec2<f32>(-319f, 2282f), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 11u)], true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(855f)), -405f) * _wgslsmith_div_vec2_f32(vec2<f32>(-192f, 634f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1655f, 1557f), vec2<f32>(-216f, 309f), vec2<bool>(false, global1.x))))))));
    var var_1 = Struct_1(true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - -276f), var_0.x)))) > var_0.x;
    var var_3 = firstLeadingBit(~select(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(7966u, u_input.a, u_input.a), vec3<u32>(9750u, 0u, 1u)), abs(vec3<u32>(u_input.a, 0u, u_input.a))), ~vec3<u32>(u_input.a, u_input.a, u_input.a) ^ ~vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<bool>(true, all(vec3<bool>(var_1.a, global3[_wgslsmith_index_u32(53866u, 11u)], var_1.a)), any(vec2<bool>(true, false)))));
    var var_4 = !(!any(select(select(vec4<bool>(var_1.a, global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)], false), vec4<bool>(false, global3[_wgslsmith_index_u32(var_3.x, 11u)], global1.x, global3[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global1.x, true, true, true)), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(0u, 11u)], true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 9u)], true, false))));
    let var_5 = select(firstTrailingBit(abs(abs(~vec2<u32>(u_input.a, 4294967295u)))), ~(~(~vec2<u32>(u_input.a, var_3.x)) >> (var_3.xx % vec2<u32>(32u))), all(select(select(select(vec2<bool>(var_1.a, false), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(true, false)), select(global1.yy, global1.xz, false), global1.zx), select(select(global1.zz, vec2<bool>(var_1.a, global1.x), true), select(vec2<bool>(true, true), vec2<bool>(var_1.a, true), true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 11u)], true)), -104f < var_0.x)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(!global1.x & global1.x), Struct_2(_wgslsmith_mod_vec4_i32(-vec4<i32>(global4.x, 1i, u_input.c, 2147483647i), ~u_input.b)), all(select(vec3<bool>(global1.x, true, false), vec3<bool>(true, global1.x, global2[_wgslsmith_index_u32(23472u, 9u)]), any(vec3<bool>(var_1.a, var_1.a, var_1.a)))), ~1u)).x * 677f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1440f, 431f, 389f, -1000f) * vec4<f32>(579f, var_0.x, var_0.x, -305f)), vec4<f32>(var_0.x, var_0.x, -974f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, -955f, 1128f, var_0.x)) * vec4<f32>(var_0.x, -568f, 100f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(666f, -899f) + vec2<f32>(872f, 115f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -231f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1472f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), select(vec2<bool>(true, true), vec2<bool>(global1.x, false), !var_1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-197f, var_0.x), vec2<f32>(-375f, var_0.x), false)))), vec2<f32>(_wgslsmith_f_op_f32(max(477f, 1000f)), 933f)), false && (false & var_1.a))), vec2<i32>(-6376i, firstLeadingBit(global4.x)), var_0.x);
}

