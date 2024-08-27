struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: bool;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-20932i), Struct_1(0i), Struct_1(2147483647i), Struct_1(-43106i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(-17287i), Struct_1(-18901i), Struct_1(5311i), Struct_1(18073i), Struct_1(-19989i), Struct_1(-18548i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(-5104i), Struct_1(2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = arg_0.a;
    let var_2 = -1144f;
    var var_3 = all(vec3<bool>(true, u_input.c >= ~41827u, !global0.x));
    global2 = array<Struct_1, 18>();
    return ~countOneBits(1u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> bool {
    return !global0.x;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    global0 = select(!(!vec4<bool>(global0.x == global0.x, all(vec4<bool>(false, global0.x, global0.x, true)), true || global0.x, global0.x)), select(select(!select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true), vec4<bool>(false, any(global0.wwz), true, false), !(!global0.x)), select(vec4<bool>(global0.x || false, true, global0.x, true), select(!vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(true, true, true, true)), global0.x), true), !(!select(!vec4<bool>(true, false, true, global0.x), select(vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, true, true, global0.x), global0.x), func_3(arg_0.x, 1u, global0.x, global2[_wgslsmith_index_u32(0u, 18u)]))));
    var var_0 = global2[_wgslsmith_index_u32(~(~((25923u | (u_input.c << (0u % 32u))) >> (func_1(global2[_wgslsmith_index_u32(~1u, 18u)]) % 32u))), 18u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(149f, -946f, 2450f, 226f) - vec4<f32>(-387f, -1000f, -737f, -596f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-687f, -1000f, -744f, -1415f), vec4<f32>(968f, 1656f, -542f, 1022f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(151f, -324f, -558f, 506f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -757f), -1002f, _wgslsmith_f_op_f32(-1307f - 164f), _wgslsmith_f_op_f32(ceil(530f))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1186f, 2164f, -513f, -177f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, -1754f, -265f, -1577f)))))));
    var var_2 = Struct_1(_wgslsmith_mult_i32(2147483647i, -1i));
    global0 = select(select(vec4<bool>(true, true, global0.x, true), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true)), select(vec4<bool>(false, false, true, true), !vec4<bool>(true, global0.x, global0.x, global0.x), !global0.x), false), select(!vec4<bool>(false, true, global0.x, global0.x), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, false), false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x)), vec4<bool>(global0.x & false, !global0.x, global0.x || false, global0.x))), !select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, global0.x, global0.x, false)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(select(!select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x)), select(!vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, global0.x), !vec4<bool>(global0.x, true, true, true)), select(vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(global0.x, true, true, false), true)), select(!vec4<bool>(true, false, true, global0.x), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(all(vec3<bool>(true, false, global0.x)), true, global0.x, any(vec4<bool>(false, true, false, false)))), vec4<bool>(true, select(global0.x & false, !global0.x, !global0.x), !global0.x, global0.x)));
    return firstTrailingBit(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = global2[_wgslsmith_index_u32(~func_1(Struct_1(~reverseBits(2147483647i))), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~28601u)) ^ ~_wgslsmith_clamp_u32(abs(u_input.c), ~14988u, 13787u), func_2(vec3<i32>(-firstLeadingBit(-1i), ~(-31363i), -41252i)), 1u, ~min(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(1u, u_input.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(29668u, 21331u), ~vec2<u32>(12155u, u_input.c))));
}

