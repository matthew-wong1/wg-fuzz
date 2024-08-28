struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 0i, 0i, -47694i);

var<private> global2: array<f32, 17>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_1(u_input.a, ~38787i, !select(vec2<bool>(true, true), select(!vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), arg_0), arg_0 | true), select(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(true, arg_0), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(false, arg_0)))), vec4<u32>(46617u, ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, u_input.a), reverseBits(1u), ~u_input.a), _wgslsmith_div_u32(11926u, abs(2293u)), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(6141u, global0[_wgslsmith_index_u32(u_input.a, 32u)], 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)]))));
    return abs(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global1.x, global1.x), global1.x) ^ -(i32(-1i) * -2147483647i), firstLeadingBit(firstLeadingBit(i32(-1i) * -2147483647i))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(all(vec2<bool>(true, !arg_0.x)) & !all(vec4<bool>(false, arg_0.x, false, arg_0.x)), Struct_1(u_input.a, func_3(true), select(arg_0.xz, select(select(arg_0.xx, vec2<bool>(arg_0.x, true), arg_0.xz), arg_0.zw, true), vec2<bool>(arg_0.x, any(arg_0.zxy))), abs(~(vec4<u32>(6590u, u_input.a, 14260u, global0[_wgslsmith_index_u32(u_input.a, 32u)]) | vec4<u32>(u_input.a, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], 32u)], 55306u)))), Struct_1(u_input.a, -1i, !vec2<bool>(arg_0.x, global0[_wgslsmith_index_u32(0u, 32u)] <= global0[_wgslsmith_index_u32(u_input.a, 32u)]), firstLeadingBit(vec4<u32>(57659u, 56839u, u_input.a, 0u)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 0u, 1u, u_input.a), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 1u)) << (reverseBits(vec4<u32>(19188u, global0[_wgslsmith_index_u32(24968u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)], 448u)) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(select(1u, ~firstLeadingBit(global0[_wgslsmith_index_u32(0u, 32u)]), false), 41342i, arg_0.zx, abs(vec4<u32>(~u_input.a, 8554u, ~1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27693u, 32u)], 32u)], 32u)], 32u)] << (global0[_wgslsmith_index_u32(37945u, 32u)] % 32u)))), global1.xwz);
    let var_1 = vec2<bool>(true, var_0.c.c.x);
    let var_2 = Struct_1(~51706u, var_0.d.b, vec2<bool>(any(select(select(arg_0.yw, arg_0.yz, var_0.c.c.x), var_1, select(var_0.d.c, var_0.b.c, var_0.b.c.x))), ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 63473u) != firstTrailingBit(reverseBits(0u))), _wgslsmith_add_vec4_u32(select(~(var_0.d.d & vec4<u32>(28423u, 4294967295u, var_0.d.d.x, 0u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, var_0.b.d.x) | ~vec4<u32>(4294967295u, 18286u, var_0.b.a, u_input.a), !(!arg_0)), ~var_0.d.d));
    global0 = array<u32, 32>();
    var var_3 = var_0.e.zz;
    return Struct_1(abs(_wgslsmith_dot_vec4_u32(var_2.d, ~vec4<u32>(4294967295u, u_input.a, var_0.b.a, 1u))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 70794u, 10885u) & (var_2.d.xxx | vec3<u32>(1u, 47082u, global0[_wgslsmith_index_u32(50801u, 32u)])), select(min(vec3<u32>(u_input.a, u_input.a, u_input.a), var_2.d.zwy), var_0.d.d.wwx, false)) % 32u), _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(var_0.e, _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, 2147483647i, var_3.x), vec3<i32>(var_3.x, 0i, var_3.x))), vec3<i32>(47580i | _wgslsmith_dot_vec2_i32(vec2<i32>(-8707i, 4616i), vec2<i32>(0i, -23598i)), ~_wgslsmith_add_i32(24594i, -2147483647i), firstTrailingBit(var_3.x) | var_3.x)), vec2<bool>(!var_2.c.x, true), var_2.d);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(true, func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)))), func_2(vec4<bool>(true, true, true, true)), Struct_1(~1u, -firstTrailingBit(1455i), vec2<bool>(true, true), vec4<u32>(firstTrailingBit(u_input.a), ~81502u, ~global0[_wgslsmith_index_u32(4294967295u, 32u)] >> (global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 32u)] % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~57704u, 32u)], 32u)])), global1.wxx);
    global0 = array<u32, 32>();
    let var_1 = 0i;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(714f, global2[_wgslsmith_index_u32(1u, 17u)]))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(44372u, 17u)])), 1000f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_f_op_f32(-582f - global2[_wgslsmith_index_u32(0u, 17u)])), vec2<bool>(var_0.a, -2147483647i <= var_0.c.b))), vec2<f32>(global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)])), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)])))))));
    var var_3 = abs(min(select(var_0.c.d, var_0.d.d, !select(vec4<bool>(var_0.a, var_0.a, var_0.d.c.x, false), vec4<bool>(var_0.b.c.x, var_0.c.c.x, var_0.d.c.x, var_0.d.c.x), true)), select(countOneBits(var_0.b.d >> (var_0.d.d % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 24631u, 0u, u_input.a), var_0.d.d << (vec4<u32>(global0[_wgslsmith_index_u32(62193u, 32u)], global0[_wgslsmith_index_u32(13528u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], 1u) % vec4<u32>(32u))), var_0.c.c.x)));
    return var_0.c;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(arg_1.c.x, func_2(!vec4<bool>(arg_0, func_1(466i).c.x, !arg_0, -16782i < arg_1.b)), func_2(vec4<bool>(all(!vec4<bool>(true, false, arg_0, true)), all(!arg_1.c), !arg_0, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 17u)]) > 566f)), arg_1, ~global1.xyw);
    let var_1 = arg_0;
    var var_2 = ~(~(~var_0.b.d.yz)) << (~(~vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32328u), global0[_wgslsmith_index_u32(0u, 32u)] ^ arg_1.a)) % vec2<u32>(32u));
    var_0 = Struct_2(var_0.c.c.x, func_1(~_wgslsmith_mult_i32(19749i, -48328i)), var_0.d, func_1(max(-1i, reverseBits(i32(-1i) * -6215i))), max(_wgslsmith_mult_vec3_i32(global1.zzy, global1.wxw), -(vec3<i32>(-34141i, arg_1.b, global1.x) | var_0.e) | min(var_0.e, firstTrailingBit(var_0.e))));
    var var_3 = 554f;
    return Struct_2(all(!select(select(vec3<bool>(var_1, arg_0, arg_1.c.x), vec3<bool>(false, true, var_0.d.c.x), var_0.b.c.x), select(vec3<bool>(var_0.a, var_0.c.c.x, var_1), vec3<bool>(var_1, var_1, false), true), vec3<bool>(false, var_0.d.c.x, arg_1.c.x))), var_0.d, var_0.c, func_2(!vec4<bool>(func_2(vec4<bool>(arg_1.c.x, true, false, arg_0)).c.x, var_1 || arg_0, true, all(vec3<bool>(var_1, false, false)))), _wgslsmith_mod_vec3_i32(firstTrailingBit(select(var_0.e, ~vec3<i32>(-33443i, 0i, -2147483647i), all(vec2<bool>(false, false)))), var_0.e));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    global1 = _wgslsmith_mod_vec4_i32(~vec4<i32>(-_wgslsmith_mod_i32(global1.x, arg_1.e.x), arg_1.c.b, _wgslsmith_dot_vec3_i32(arg_1.e ^ vec3<i32>(arg_1.b.b, global1.x, -86427i), -global1.yyy), global1.x), ~vec4<i32>(-4615i, global1.x, global1.x, global1.x));
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(arg_1.d.b, -1i ^ (arg_1.b.b >> (arg_0 % 32u)));
    var var_1 = func_4(arg_1.c.c.x, Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~u_input.a), ~global0[_wgslsmith_index_u32(u_input.a, 32u)] ^ ~global0[_wgslsmith_index_u32(32247u, 32u)]), _wgslsmith_mult_i32(1i, func_3(arg_1.b.c.x)), !(!arg_1.d.c), min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 17286u, 13186u, 4215u), vec4<u32>(arg_1.d.d.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(arg_1.c.a, 32u)], arg_1.d.a)) << ((arg_1.c.d & vec4<u32>(0u, arg_0, u_input.a, arg_1.c.d.x)) % vec4<u32>(32u)), countOneBits(min(vec4<u32>(76561u, arg_0, 10639u, arg_0), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5470u, 32u)], 32u)], arg_1.b.a, 1u, 24213u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2)))) - 1409f)).c;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 220f) + vec2<f32>(arg_2, -651f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 17u)], 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(372f, global2[_wgslsmith_index_u32(0u, 17u)]), vec2<f32>(564f, global2[_wgslsmith_index_u32(0u, 17u)]))))) * vec2<f32>(_wgslsmith_f_op_f32(-2276f - 314f), 1000f)))));
    var var_3 = arg_1;
    return vec3<i32>(~_wgslsmith_dot_vec4_i32(max(select(vec4<i32>(var_3.d.b, var_1.b, -51198i, 0i), vec4<i32>(var_3.d.b, -34223i, -1i, arg_1.d.b), true), vec4<i32>(1i, -2147483647i, var_1.b, 1i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.b.b, -2147483647i, global1.x, 1i), vec4<i32>(1i, var_1.b, global1.x, -37708i)), vec4<i32>(global1.x, 9646i, 2147483647i, 2147483647i) << (var_3.c.d % vec4<u32>(32u)))), arg_1.e.x, -arg_1.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(31374i, -23709i, ~27166i);
    var_0 = _wgslsmith_mod_vec3_i32(func_5(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(1u, 32u)]), 32u)], 68282u), func_4(true, func_1(abs(var_0.x)), 482f), 1169f), global1.xww);
    var var_1 = select(global1.zz, ~max(~var_0.yy, var_0.yz << (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 32u)]) % vec2<u32>(32u))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) >> ((min(min(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], 0u)), func_2(vec4<bool>(false, false, true, false)).d.wy), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), max(vec2<u32>(43248u, u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(69575u, 32u)], global0[_wgslsmith_index_u32(64295u, 32u)])))) >> (~vec2<u32>(~0u, 7057u) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_1 = vec2<i32>(-16388i, ~var_1.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1741f - global2[_wgslsmith_index_u32(u_input.a, 17u)]))) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 17u)] - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 17u)])));
    global1 = -countOneBits(firstTrailingBit(select(vec4<i32>(var_1.x, global1.x, 0i, -2147483647i), vec4<i32>(var_1.x, var_1.x, var_0.x, var_1.x), vec4<bool>(false, false, true, false)))) & vec4<i32>(~var_0.x, 15291i, 1i >> (_wgslsmith_mult_u32(4294967295u, countOneBits(u_input.a)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.x), firstLeadingBit(vec2<i32>(var_0.x, -3227i))));
    var var_3 = ((_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(28200u, global0[_wgslsmith_index_u32(34241u, 32u)])) >> ((vec2<u32>(global0[_wgslsmith_index_u32(28720u, 32u)], 0u) << ((vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 32u)]) | vec2<u32>(u_input.a, 87237u)) % vec2<u32>(32u))) % vec2<u32>(32u))) | vec2<u32>(~firstLeadingBit(u_input.a), 4294967295u)) | ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(13375u, 32u)], 1142u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], 32u)]) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), true), vec2<u32>(_wgslsmith_mult_u32(u_input.a, 41129u), _wgslsmith_sub_u32(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33189u, 32u)], 32u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f + -935f) - -562f) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~4294967295u, 17u)] - _wgslsmith_f_op_f32(1330f * -1640f)))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.a, 17u)] - -1000f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(19222u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), 17u)])) - _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~1u, 17u)], _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 32u)], 17u)])), 4294967295u == u_input.a))), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_3.x, 17u)])), global2[_wgslsmith_index_u32(~(~(~var_3.x)), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(0u, 17u)])) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_3.x, 17u)])))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(37334u, 17u)]));
}

