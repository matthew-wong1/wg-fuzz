struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(138218u, 4561u, 23664u, 160326u)), Struct_1(vec4<u32>(49034u, 24390u, 41741u, 1u)), Struct_1(vec4<u32>(1u, 73970u, 59066u, 4294967295u)), Struct_1(vec4<u32>(0u, 19362u, 24477u, 27932u)), Struct_1(vec4<u32>(30957u, 0u, 127195u, 0u)), Struct_1(vec4<u32>(1u, 60052u, 0u, 29648u)), Struct_1(vec4<u32>(1403u, 1u, 25516u, 1u)), Struct_1(vec4<u32>(54224u, 1u, 4294967295u, 6895u)), Struct_1(vec4<u32>(1u, 53899u, 0u, 35582u)), Struct_1(vec4<u32>(85329u, 85118u, 43712u, 59927u)), Struct_1(vec4<u32>(46639u, 61144u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 67107u, 38149u, 0u)), Struct_1(vec4<u32>(0u, 0u, 4659u, 37403u)), Struct_1(vec4<u32>(35177u, 4294967295u, 16316u, 1u)), Struct_1(vec4<u32>(58173u, 0u, 47507u, 4294967295u)), Struct_1(vec4<u32>(43867u, 0u, 34786u, 50076u)), Struct_1(vec4<u32>(23744u, 4294967295u, 0u, 4294967295u)), Struct_1(vec4<u32>(44273u, 33042u, 4294967295u, 0u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = -2147483647i;
    var var_1 = var_0 & _wgslsmith_mult_i32(var_0, _wgslsmith_mod_i32(~0i, _wgslsmith_clamp_i32(1i, ~(-24573i), var_0)));
    let var_2 = Struct_2(121f, global0.d, select(~(~vec4<u32>(global0.d.a.x, global0.b.a.x, global0.c.x, 1u)), ~(_wgslsmith_clamp_vec4_u32(global0.b.a, global0.b.a, global0.b.a) << (global0.d.a % vec4<u32>(32u))), all(global0.e)), Struct_1(vec4<u32>(global0.b.a.x, global0.c.x << (global0.c.x % 32u), ~(~global0.d.a.x), ~(global0.c.x ^ global0.b.a.x))), select(vec3<bool>(global0.e.x, !any(vec4<bool>(true, global0.e.x, true, false)), true || all(vec3<bool>(global0.e.x, global0.e.x, global0.e.x))), global0.e, !(!vec3<bool>(global0.e.x, global0.e.x, false))));
    var var_3 = global0.d.a;
    var var_4 = Struct_1(var_2.c);
    return select(_wgslsmith_clamp_vec4_u32(vec4<u32>(~(global0.c.x >> (var_4.a.x % 32u)), ~_wgslsmith_mult_u32(4235u, 1u), var_2.c.x, 98925u), var_4.a, var_2.d.a), ~firstTrailingBit(select(vec4<u32>(var_3.x, 66818u, var_3.x, 86512u), vec4<u32>(18481u, 0u, 27978u, 0u), vec4<bool>(global0.e.x, false, var_2.e.x, false)) >> (vec4<u32>(31780u, 65557u, 55688u, var_4.a.x) % vec4<u32>(32u))), !vec4<bool>(var_2.e.x, select(var_2.e.x, true, true), all(select(vec3<bool>(false, true, var_2.e.x), global0.e, false)), true | all(vec3<bool>(global0.e.x, true, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-global0.a), global0.b, func_3(_wgslsmith_add_i32(_wgslsmith_sub_i32(-25949i, u_input.b), 8019i)), global1[_wgslsmith_index_u32((~_wgslsmith_sub_u32(1u, 1u) << (global0.b.a.x % 32u)) ^ ~(~4294967295u), 18u)], select(select(global0.e, vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, global0.e.x, global0.c.x >= global0.c.x)), global0.e, true));
    global0 = var_0;
    global0 = Struct_2(_wgslsmith_f_op_f32(step(1184f, var_0.a)), global1[_wgslsmith_index_u32(global0.c.x, 18u)], vec4<u32>(10371u, ~(~(~29838u)), _wgslsmith_dot_vec3_u32(reverseBits(global0.b.a.xxy), var_0.c.yzx << (~global0.d.a.xxx % vec3<u32>(32u))), ~28250u), global1[_wgslsmith_index_u32(99808u, 18u)], vec3<bool>(true, global0.e.x, false));
    var var_1 = global1[_wgslsmith_index_u32(var_0.b.a.x, 18u)];
    let var_2 = vec2<bool>(all(vec4<bool>(true, true, true, true)), ((24049i <= _wgslsmith_div_i32(u_input.a, u_input.a)) && global0.e.x) | select(var_0.e.x, true && !var_0.e.x, any(vec3<bool>(true, var_0.e.x, global0.e.x))));
    return var_0.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = -35006i;
    let var_1 = any(vec3<bool>(global0.d.a.x < 1u, 3857i > (reverseBits(0i) & ~u_input.a), min(_wgslsmith_clamp_i32(1i, 2147483647i, arg_2), ~12774i) <= arg_2));
    let var_2 = func_2();
    let var_3 = vec3<bool>(true, false, true != global0.e.x);
    global0 = Struct_2(-1620f, Struct_1(~vec4<u32>(var_2.a.x, _wgslsmith_add_u32(arg_0.b.a.x, global0.d.a.x), firstLeadingBit(arg_0.c.x), global0.c.x)), ~arg_0.c, func_2(), !vec3<bool>(true, false, arg_0.e.x));
    return arg_1.a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(-global0.a), global1[_wgslsmith_index_u32(15513u, 18u)], ~((vec4<u32>(global0.c.x, arg_2, arg_0.x, global0.d.a.x) | vec4<u32>(arg_2, arg_2, global0.b.a.x, 0u)) >> (~vec4<u32>(0u, arg_2, arg_0.x, arg_2) % vec4<u32>(32u))), Struct_1(vec4<u32>(~27980u << (global0.c.x % 32u), 1u ^ global0.b.a.x, func_4(Struct_2(global0.a, Struct_1(vec4<u32>(0u, arg_0.x, arg_0.x, 24054u)), global0.b.a, Struct_1(global0.c), global0.e), func_2(), -1i), min(arg_2, arg_2) >> (4294967295u % 32u))), global0.e);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec4<u32> {
    global0 = arg_0;
    var var_0 = global0.b;
    global1 = array<Struct_1, 18>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(arg_2 * -108f), Struct_1(_wgslsmith_mult_vec4_u32(var_0.a, vec4<u32>(66908u, _wgslsmith_div_u32(global0.b.a.x, 15104u), 4294967295u, firstTrailingBit(6069u)))), vec4<u32>(_wgslsmith_mod_u32(37981u, _wgslsmith_add_u32(1u, var_0.a.x)), global0.b.a.x, var_0.a.x, 0u), func_1(arg_0.b.a.wz, _wgslsmith_f_op_f32(ceil(global0.a)), reverseBits(firstLeadingBit(0u) ^ var_0.a.x), global0.e.x).d, global0.e);
    global0 = Struct_2(arg_2, Struct_1(vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a.x, 46915u, 49605u, var_1.c.x), ~arg_1.d.a), Struct_1(vec4<u32>(~arg_1.d.a.x, arg_0.b.a.x, var_1.b.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(46756u, 46980u, 0u), vec3<u32>(1u, 4294967295u, arg_0.d.a.x)))), vec3<bool>(var_1.e.x, any(vec3<bool>(true, select(var_1.e.x, true, true), !var_1.e.x)), !select(var_1.e.x, !global0.e.x, !global0.e.x)));
    return ~_wgslsmith_div_vec4_u32(~select(var_0.a >> (vec4<u32>(32332u, 6848u, 61301u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(var_0.a.x, var_1.d.a.x, arg_0.b.a.x, 4825u), vec4<bool>(var_1.e.x, true, arg_1.e.x, true)), abs(vec4<u32>(_wgslsmith_div_u32(var_1.d.a.x, 1u), ~arg_0.d.a.x, 43586u, ~11385u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d;
    let var_1 = Struct_1(func_5(func_1(vec2<u32>(_wgslsmith_mult_u32(global0.c.x, 26466u), countOneBits(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -1498f), ~reverseBits(global0.b.a.x), true), Struct_2(global0.a, global1[_wgslsmith_index_u32(var_0.a.x, 18u)], ~global0.b.a, Struct_1(vec4<u32>(1u, var_0.a.x, global0.c.x, global0.d.a.x)), global0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1680f)) - 595f) * _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(global0.a * -1372f))))));
    var var_2 = vec3<bool>(true, 80986u > ~(~firstTrailingBit(var_1.a.x)), !all(global0.e.xy));
    global0 = func_1(~(~vec2<u32>(1u, ~4294967295u)), global0.a, 81863u, !any(!(!vec2<bool>(global0.e.x, false))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, -1018f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -243f, 620f) * vec3<f32>(global0.a, global0.a, global0.a))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a) - vec3<f32>(global0.a, global0.a, global0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(15094i, global0.a);
}

