struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -157f, vec2<u32>(0u, 9056u));

var<private> global1: array<i32, 21> = array<i32, 21>(-1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 44307i, 39685i, -15946i, -1i, 33691i, 2147483647i, -1i, 14964i, -13553i, 1i, -35152i, 1i, 73589i, i32(-2147483648), 1i, 41829i, 45854i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = u_input.a;
    let var_1 = global0.b < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b * global0.b), global0.b));
    var_0 = vec4<u32>(reverseBits(countOneBits(firstTrailingBit(var_0.x))), ~0u, var_0.x, firstLeadingBit(~102562u));
    var var_2 = Struct_1(global0.a, global0.b, global0.c);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.b)), var_2.b) + _wgslsmith_f_op_f32(-193f - _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(min(451f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + -424f) - var_2.b) * var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_2.b))), global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2620f, 818f)))))));
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = -1i;
    global1 = array<i32, 21>();
    global1 = array<i32, 21>();
    var_1 = -(~select(1i, _wgslsmith_sub_i32(16720i, -18838i), true)) ^ 1i;
    return Struct_1(true, _wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.b)))), u_input.a.x <= func_3())), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b.c.x, global0.c.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.c, vec2<u32>(u_input.a.x, 0u) ^ vec2<u32>(9150u, 0u), vec2<u32>(u_input.a.x, 1u) & vec2<u32>(global0.c.x, u_input.a.x)), vec2<u32>(var_0.d.c.x, ~global0.c.x), max(select(u_input.a.ww, global0.c, vec2<bool>(var_0.a.a, false)), abs(vec2<u32>(u_input.a.x, u_input.a.x)))), ~vec2<u32>(global0.c.x, countOneBits(var_0.a.c.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_1, arg_1, _wgslsmith_sub_i32(abs(-global1[_wgslsmith_index_u32(global0.c.x, 21u)]) << (4294967295u % 32u), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(arg_1.c.x, 21u)] >> (func_2(Struct_2(Struct_1(global0.a, arg_1.b, global0.c), Struct_1(true, global0.b, vec2<u32>(0u, global0.c.x)), -1i, arg_1), vec4<i32>(u_input.c.x, 28659i, global1[_wgslsmith_index_u32(25696u, 21u)], global1[_wgslsmith_index_u32(global0.c.x, 21u)])).c.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 29264i, -12418i, global1[_wgslsmith_index_u32(arg_1.c.x, 21u)]), u_input.b), ~vec4<i32>(global1[_wgslsmith_index_u32(global0.c.x, 21u)], -55238i, 12606i, -21304i)))), arg_1);
    let var_1 = !vec4<bool>(var_0.a.a, var_0.b.a || false, var_0.b.a, false & select(true, u_input.a.x > 17570u, arg_1.a));
    global0 = Struct_1(false, 527f, _wgslsmith_mult_vec2_u32(select(_wgslsmith_add_vec2_u32(arg_1.c, vec2<u32>(var_0.d.c.x, u_input.a.x) & u_input.a.zx), ~vec2<u32>(var_0.a.c.x, 4294967295u), vec2<bool>(any(vec3<bool>(global0.a, true, true)), !var_0.a.a)), ~func_2(Struct_2(Struct_1(false, -797f, global0.c), Struct_1(false, global0.b, arg_1.c), var_0.c, arg_1), u_input.b & vec4<i32>(0i, -543i, global1[_wgslsmith_index_u32(0u, 21u)], u_input.c.x)).c));
    let var_2 = max(~(~(reverseBits(vec3<u32>(4294967295u, arg_1.c.x, u_input.a.x)) >> (firstTrailingBit(u_input.a.zwz) % vec3<u32>(32u)))), u_input.a.zzz);
    var_0 = Struct_2(var_0.a, func_2(Struct_2(Struct_1(false, 520f, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 21549u))), Struct_1(true, -390f, ~arg_1.c), max(53666i, var_0.c), var_0.d), vec4<i32>(var_0.c, var_0.c, ~var_0.c, 13911i ^ u_input.b.x)), _wgslsmith_div_i32(-21729i, -47534i), func_2(Struct_2(func_2(Struct_2(arg_1, var_0.d, var_0.c, arg_1), _wgslsmith_sub_vec4_i32(vec4<i32>(16421i, 1i, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(120238u, 21u)]), vec4<i32>(4256i, global1[_wgslsmith_index_u32(arg_0, 21u)], -1i, u_input.b.x))), func_2(Struct_2(var_0.b, var_0.d, -35596i, Struct_1(var_1.x, global0.b, vec2<u32>(1u, arg_0))), u_input.b >> (vec4<u32>(4294967295u, 0u, u_input.a.x, arg_0) % vec4<u32>(32u))), -2147483647i, Struct_1(all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(max(arg_1.b, 1607f)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, global0.c.x), u_input.a.yx, var_0.a.c))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -40181i), u_input.b.yw), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(var_2.x, 21u)], -8527i), u_input.c), -1i, global1[_wgslsmith_index_u32(~global0.c.x, 21u)])));
    return func_2(Struct_2(func_2(Struct_2(Struct_1(var_1.x, 500f, vec2<u32>(global0.c.x, arg_1.c.x)), func_2(Struct_2(var_0.a, var_0.b, var_0.c, Struct_1(true, -1185f, vec2<u32>(arg_1.c.x, 4294967295u))), vec4<i32>(-49061i, u_input.c.x, -31249i, 1i)), 1i >> (var_2.x % 32u), arg_1), ~select(vec4<i32>(var_0.c, u_input.c.x, global1[_wgslsmith_index_u32(global0.c.x, 21u)], 17898i), u_input.b, vec4<bool>(var_0.a.a, true, true, true))), func_2(Struct_2(Struct_1(global0.a, global0.b, var_2.zz), Struct_1(global0.a, -569f, vec2<u32>(0u, 4294967295u)), 1i, Struct_1(false, -457f, vec2<u32>(4294967295u, 1u))), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(0u, 21u)], 29209i, global1[_wgslsmith_index_u32(37904u, 21u)]) ^ vec4<i32>(global1[_wgslsmith_index_u32(global0.c.x, 21u)], global1[_wgslsmith_index_u32(23074u, 21u)], 33163i, -2147483647i))), abs(1i), Struct_1(any(select(var_1, var_1, var_1)), -2289f, var_0.b.c)), min(u_input.b, select(u_input.b, firstTrailingBit(u_input.b), !select(var_1, vec4<bool>(false, false, arg_1.a, var_0.b.a), false))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = func_2(Struct_2(arg_1, arg_1, global1[_wgslsmith_index_u32(max(global0.c.x, ~18335u), 21u)], Struct_1(select(false, false | arg_1.a, all(vec3<bool>(false, true, arg_1.a))), global0.b, u_input.a.wx)), vec4<i32>(~(-33343i) ^ (~global1[_wgslsmith_index_u32(arg_0.x, 21u)] >> (abs(arg_0.x) % 32u)), ~_wgslsmith_clamp_i32(firstTrailingBit(31285i), _wgslsmith_mod_i32(1i, u_input.b.x), -810i), global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 9488i));
    let var_1 = Struct_1(any(!(!(!vec3<bool>(arg_1.a, global0.a, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1664f * arg_1.b) - -247f)))), global0.c);
    global1 = array<i32, 21>();
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(441f - func_2(Struct_2(Struct_1(var_1.a, 1322f, var_1.c), var_1, global1[_wgslsmith_index_u32(var_0.c.x, 21u)], Struct_1(var_1.a, var_0.b, vec2<u32>(global0.c.x, var_1.c.x))), vec4<i32>(u_input.b.x, 1i, arg_3.x, -8854i) >> (u_input.a % vec4<u32>(32u))).b))), u_input.a.xx);
    var var_3 = func_2(Struct_2(func_4(u_input.a.x, Struct_1(arg_1.a, var_2.b, global0.c >> (arg_2.xz % vec2<u32>(32u)))), Struct_1(!(-13582i > u_input.c.x), _wgslsmith_f_op_f32(1326f * -1722f), ~func_4(var_0.c.x, var_2).c), ~29183i, var_2), _wgslsmith_mult_vec4_i32(u_input.b, arg_3));
    return -7937i;
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<i32>(func_5(u_input.a.ywz | ~vec3<u32>(0u, u_input.a.x, global0.c.x), func_4(1u, func_2(Struct_2(Struct_1(true, global0.b, global0.c), Struct_1(global0.a, global0.b, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.b.x, Struct_1(false, global0.b, u_input.a.yx)), reverseBits(vec4<i32>(u_input.b.x, -2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global1[_wgslsmith_index_u32(2331u, 21u)])))), u_input.a.xzw, vec4<i32>(u_input.b.x, max(u_input.c.x, -2147483647i), -4779i & u_input.b.x, u_input.b.x) >> ((u_input.a >> (~vec4<u32>(u_input.a.x, 4294967295u, 1u, 1069u) % vec4<u32>(32u))) % vec4<u32>(32u))), 29752i, -(~(-5096i)), 0i);
    var var_1 = Struct_2(Struct_1(false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1324f * global0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b * 277f))), all(vec4<bool>(global0.a, true, global0.a, false)) || (global0.a && false))), ~vec2<u32>(max(0u, u_input.a.x), _wgslsmith_div_u32(23615u, global0.c.x))), Struct_1(true, -930f, countOneBits(vec2<u32>(_wgslsmith_clamp_u32(37341u, 4294967295u, 72250u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)))), 11277i, func_2(Struct_2(func_4(global0.c.x, func_4(11961u, Struct_1(global0.a, global0.b, vec2<u32>(148u, global0.c.x)))), Struct_1(false, 1329f, ~vec2<u32>(40986u, 2427u)), abs(7560i), func_2(Struct_2(Struct_1(true, 946f, vec2<u32>(global0.c.x, 4294967295u)), Struct_1(global0.a, -782f, vec2<u32>(57596u, 1u)), var_0.x, Struct_1(false, global0.b, vec2<u32>(u_input.a.x, 0u))), var_0 << (u_input.a % vec4<u32>(32u)))), var_0));
    global0 = Struct_1(select(all(select(!vec4<bool>(true, true, false, global0.a), vec4<bool>(var_1.a.a, true, true, false), !vec4<bool>(var_1.d.a, false, false, var_1.d.a))), global0.a, !any(vec2<bool>(true, var_1.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.b, global0.b)))) * var_1.d.b)), min(~vec2<u32>(var_1.a.c.x, 2046u), ~(u_input.a.wy | _wgslsmith_mod_vec2_u32(global0.c, vec2<u32>(4294967295u, 4294967295u)))));
    var var_2 = -73957i;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, 315f, var_1.a.b)))))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, global0.c.x, 73304u) >> (vec3<u32>(0u, var_1.b.c.x, global0.c.x) % vec3<u32>(32u))), ~u_input.a.xyz), 1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * 1285f))), _wgslsmith_f_op_f32(step(var_1.b.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-526f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1914f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.b))), -u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !vec2<bool>(false, all(vec2<bool>(all(vec3<bool>(global0.a, global0.a, global0.a)), true)));
    let var_2 = u_input.a.wzy;
    global0 = func_4(min(reverseBits(func_4(var_2.x, func_4(1u, Struct_1(false, -1000f, vec2<u32>(u_input.a.x, global0.c.x)))).c.x), func_1().c), func_2(Struct_2(Struct_1(global0.a, _wgslsmith_f_op_f32(sign(var_0.a.x)), vec2<u32>(1777u, var_0.b)), Struct_1(false, global0.b, var_2.yy), firstTrailingBit(2147483647i), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(abs(var_0.a.x)), ~vec2<u32>(0u, var_2.x))), (u_input.b << (vec4<u32>(4294967295u, 36479u, var_0.c, u_input.a.x) % vec4<u32>(32u))) & firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(var_0.e, var_0.e, u_input.b.x, u_input.c.x)))));
    let var_3 = !vec4<bool>(!(0u >= u_input.a.x) || true, false, global0.a, false);
    var var_4 = func_4(global0.c.x, Struct_1(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(var_0.a.x * 488f), true)), 1561f), _wgslsmith_add_vec2_u32(~(~vec2<u32>(94797u, 0u)), ~(~vec2<u32>(36438u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 0u, var_0.c, ~var_4.c.x), global1[_wgslsmith_index_u32(~0u, 21u)]);
}

