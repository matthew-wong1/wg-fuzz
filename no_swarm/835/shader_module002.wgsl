struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(19115u, 3693u, 39738u);

var<private> global1: f32;

var<private> global2: array<Struct_3, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> u32 {
    global1 = _wgslsmith_div_f32(arg_0.a, arg_2.b);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))))) - _wgslsmith_div_f32(arg_2.b, _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1701f, 1808f))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_0.a) * -303f))) + _wgslsmith_f_op_f32(max(-193f, _wgslsmith_f_op_f32(floor(-1368f)))));
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~(arg_1 ^ arg_1), 4294967295u, _wgslsmith_mod_u32(~global0.x, ~arg_1), ~(~arg_1)), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 33614u, arg_1, arg_1), vec4<u32>(0u, arg_1, 17032u, 5802u))) | ~(vec4<u32>(59254u, 58727u, 1u, arg_1) << (vec4<u32>(1u, arg_1, global0.x, 61894u) % vec4<u32>(32u)))), arg_0);
    let var_1 = global2[_wgslsmith_index_u32(51489u, 19u)];
    return abs(~(~(38620u | var_0.a))) | ~1u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(false, true, false, (func_3(Struct_1(-751f), global0.x, Struct_3(true, -1573f)) ^ global0.x) > 0u);
    global1 = -1710f;
    var var_1 = ~vec3<i32>(-34266i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-12159i | u_input.a, u_input.a), 0i, -1i), -abs(0i & u_input.a));
    let var_2 = !select(~(global0.x & global0.x) != _wgslsmith_dot_vec2_u32(vec2<u32>(9697u, 0u), ~global0.yx), var_0.x, var_0.x);
    let var_3 = Struct_3((((false || var_0.x) || true) && var_2) & !var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-558f)) - _wgslsmith_f_op_f32(min(-504f, _wgslsmith_f_op_f32(min(129f, 1048f))))) * 1156f));
    return Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.b), var_3.b, var_3.a)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(_wgslsmith_clamp_u32(~global0.x, _wgslsmith_dot_vec2_u32(global0.xx, vec2<u32>(18462u, _wgslsmith_sub_u32(global0.x, global0.x))), ~global0.x), func_2());
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(138f, arg_0.a.b.a, 444f, _wgslsmith_f_op_f32(-133f - arg_0.e.b.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1184f, arg_0.a.b.a, -121f, arg_0.e.b.a) * vec4<f32>(arg_0.a.b.a, 976f, 1185f, 1000f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, arg_0.a.b.a, -1371f, arg_0.a.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.b.a, arg_0.b.b.a, 2100f, arg_0.a.b.a)), all(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.b.a, 961f, arg_0.a.b.a, arg_0.e.b.a)))))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.a, 3295f, -1063f, arg_0.e.b.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.b.a, arg_0.a.b.a, arg_0.a.b.a, -487f))))) * vec4<f32>(arg_0.e.b.a, _wgslsmith_f_op_f32(-arg_0.b.b.a), arg_0.e.b.a, 1147f))));
    let var_1 = Struct_4(Struct_2(~(~global0.x), Struct_1(-532f)), arg_0.a, ~1u << ((global0.x >> (global0.x % 32u)) % 32u), vec2<i32>(max(arg_0.d.x, arg_0.d.x), ~14257i), arg_0.a);
    let var_2 = global0.xy;
    var var_3 = func_4(global2[_wgslsmith_index_u32(arg_0.c | var_2.x, 19u)], var_1.e.b, Struct_3(any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-575f)) * _wgslsmith_div_f32(arg_0.a.b.a, _wgslsmith_f_op_f32(min(-227f, -194f)))))).b;
    let var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_1.a.a, abs(40626u)), 19884u) >> ((global0.xz | min(vec2<u32>(var_2.x, global0.x), abs(global0.xz))) % vec2<u32>(32u)), max(~(~vec2<u32>(1u, 4294967295u)), firstTrailingBit(~global0.xx)));
    return func_2();
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.a)), 265f, !all(vec3<bool>(false, false, true)))), 1213f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), 504f);
    var var_1 = !all(vec2<bool>(all(vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, false, true)))) || (global0.x != max(global0.x & select(105402u, global0.x, true), _wgslsmith_clamp_u32(1u, 0u, global0.x & 70103u)));
    var_0 = vec3<f32>(643f, -730f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f), -389f));
    let var_2 = func_5(Struct_4(func_4(global2[_wgslsmith_index_u32(select(63265u, 29091u, false) ^ reverseBits(global0.x), 19u)], func_2(), global2[_wgslsmith_index_u32(~1u, 19u)]), func_4(global2[_wgslsmith_index_u32(1u, 19u)], Struct_1(-1314f), global2[_wgslsmith_index_u32(~(~20503u), 19u)]), ~(~global0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, -13583i), max(~vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(-26662i, 1i)), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, -2147483647i), ~vec2<i32>(u_input.a, -2147483647i))), func_4(Struct_3(true, _wgslsmith_div_f32(-361f, -1000f)), func_2(), global2[_wgslsmith_index_u32(8651u, 19u)])));
    let var_3 = var_2.a;
    return func_5(Struct_4(Struct_2(abs(49717u), func_2()), func_4(Struct_3(true, _wgslsmith_f_op_f32(1373f * var_0.x)), func_5(Struct_4(Struct_2(global0.x, var_2), Struct_2(global0.x, Struct_1(var_0.x)), 0u, vec2<i32>(16098i, -39088i), Struct_2(1u, Struct_1(var_0.x)))), global2[_wgslsmith_index_u32(global0.x, 19u)]), 12014u, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (~global0.yy % vec2<u32>(32u)), -vec2<i32>(u_input.a, u_input.a), (vec2<i32>(u_input.a, 34438i) & vec2<i32>(14416i, u_input.a)) & vec2<i32>(-53437i, -1i)), func_4(Struct_3(false, -1451f), func_5(Struct_4(Struct_2(global0.x, arg_0), Struct_2(global0.x, Struct_1(1673f)), 6345u, vec2<i32>(55148i, -2147483647i), Struct_2(global0.x, Struct_1(1119f)))), Struct_3(true, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(797f));
    let var_1 = ~vec2<u32>(_wgslsmith_div_u32(4294967295u, func_4(Struct_3(true, -814f), func_1(Struct_1(var_0.a)), Struct_3(false, var_0.a)).a), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 74120u, 0u, 35277u), vec4<u32>(global0.x, 27841u, global0.x, 60532u)), firstTrailingBit(vec4<u32>(global0.x, global0.x, 69310u, global0.x))), ~vec4<u32>(4294967295u, global0.x, 11311u, global0.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a));
    var var_2 = select(!vec2<bool>(true, select(global0.x, var_1.x, true) > 37592u), select(vec2<bool>(true, true || (0u <= global0.x)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var_0 = func_5(Struct_4(func_4(global2[_wgslsmith_index_u32(0u & (global0.x >> (9951u % 32u)), 19u)], Struct_1(-1746f), global2[_wgslsmith_index_u32(~4294967295u, 19u)]), func_4(global2[_wgslsmith_index_u32(global0.x, 19u)], Struct_1(1f), global2[_wgslsmith_index_u32(~(~0u), 19u)]), ~(~global0.x), firstTrailingBit(abs(max(vec2<i32>(1i, 1i), vec2<i32>(-212i, u_input.a)))), func_4(Struct_3(u_input.a > u_input.a, _wgslsmith_div_f32(1574f, var_0.a)), func_2(), Struct_3(!var_2.x, -585f))));
    var var_3 = !vec3<bool>(all(select(select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), true), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec3<bool>(!var_2.x, true, true)), select(true, true, all(vec3<bool>(true, true, true))));
    global2 = array<Struct_3, 19>();
    let var_4 = select(select(!vec4<bool>(false, all(var_3.xx), any(vec2<bool>(false, var_3.x)), true), !select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(false, var_2.x, var_3.x, var_2.x), var_2.x), false), !select(select(select(vec4<bool>(var_3.x, false, true, var_3.x), vec4<bool>(false, false, var_2.x, var_3.x), var_2.x), select(vec4<bool>(var_2.x, var_2.x, true, var_3.x), vec4<bool>(false, false, false, false), var_3.x), select(vec4<bool>(true, var_3.x, false, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x), false)), vec4<bool>(true, var_3.x, true, var_3.x), false), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~(~global0.x) >> (var_1.x % 32u)));
}

