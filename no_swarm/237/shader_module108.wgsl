struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(4294967295u, 38355u, 17821u);

var<private> global1: vec4<bool>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(any(!vec2<bool>(global1.x, global3.a.a.x <= global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), false, true);
    var var_1 = Struct_3(Struct_2(global3.a, global3.a, 131f, vec3<bool>(true | (global2.x | true), !global2.x, any(select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global3.d.x, global2.x), false)))), global3.b);
    let var_2 = u_input.b;
    let var_3 = Struct_4(Struct_2(Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global3.a.a.x) >> (var_1.b.a % vec2<u32>(32u))), Struct_1(vec2<u32>(52177u << (global0[_wgslsmith_index_u32(96145u, 3u)] % 32u), 26918u)), -812f, vec3<bool>(global1.x, false, global1.x)), firstLeadingBit(_wgslsmith_mult_vec2_u32(~var_1.a.b.a, _wgslsmith_sub_vec2_u32(~var_1.a.b.a, _wgslsmith_div_vec2_u32(global3.a.a, vec2<u32>(44619u, u_input.a.x))))));
    let var_4 = var_1.a;
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~var_1.b.a.x, var_1.a.b.a.x, ~global3.b.a.x, ~(~_wgslsmith_clamp_u32(11117u, 10690u, global3.b.a.x))), ~(~((vec4<u32>(28416u, global0[_wgslsmith_index_u32(7010u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], var_3.b.x) & vec4<u32>(var_1.a.b.a.x, global3.b.a.x, var_1.b.a.x, u_input.a.x)) & countOneBits(vec4<u32>(91775u, global0[_wgslsmith_index_u32(var_1.b.a.x, 3u)], 82731u, 969u)))), ~vec4<u32>(var_3.a.a.a.x << (_wgslsmith_dot_vec2_u32(var_1.b.a, vec2<u32>(0u, 1u)) % 32u), ~firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(~var_1.b.a.x, u_input.a.x), (var_3.a.b.a.x | global3.a.a.x) << (u_input.a.x % 32u)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(75159u, arg_2, global3.a.a.x, global0[_wgslsmith_index_u32(arg_2, 3u)]) & vec4<u32>(1u, global3.a.a.x, 1u, u_input.a.x), firstLeadingBit(vec4<u32>(0u, 1u, 55814u, 6327u)), ~vec4<u32>(global3.b.a.x, u_input.a.x, u_input.a.x, 26754u)), _wgslsmith_clamp_vec4_u32(func_3(), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2, global3.b.a.x, 4294967295u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(30264u, 3u)], 23825u)), vec4<u32>(arg_2, global3.b.a.x, 0u, 4294967295u))), vec4<u32>(_wgslsmith_div_u32(0u, countOneBits(4294967295u)), u_input.a.x, countOneBits(0u), abs(_wgslsmith_add_u32(arg_2, 2245u)))), abs(reverseBits(vec4<u32>(0u, 69159u, u_input.a.x & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 10574u), u_input.a.xy)))));
    var var_1 = _wgslsmith_add_i32(-1i, select(-reverseBits(23412i), arg_1.x, global1.x != global2.x));
    return select(!select(vec4<bool>(global2.x, arg_3.x, true, true), vec4<bool>(true, true, all(vec3<bool>(global1.x, arg_3.x, true)), true), true), !vec4<bool>(!global1.x, global1.x, arg_3.x != !global1.x, all(select(vec4<bool>(global3.d.x, true, true, global2.x), vec4<bool>(true, arg_3.x, true, false), global3.d.x))), global1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = ~firstTrailingBit(~u_input.b.x);
    global1 = select(vec4<bool>(global3.d.x, global1.x, global1.x, !all(vec2<bool>(true, true))), vec4<bool>(!((global3.c <= global3.c) || any(vec4<bool>(false, false, global2.x, global1.x))), global2.x, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(0i, 0i, u_input.b.x)), vec3<i32>(-2147483647i, var_0, 1i)) != _wgslsmith_dot_vec2_i32(u_input.b, min(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b)), ~global3.b.a.x > 25711u), !select(func_2(-2147483647i, vec3<i32>(var_0, -33307i, u_input.b.x) >> (u_input.a % vec3<u32>(32u)), global0[_wgslsmith_index_u32(u_input.a.x, 3u)], !vec2<bool>(false, global3.d.x)), !(!vec4<bool>(false, global2.x, true, global3.d.x)), vec4<bool>(true, global3.c >= global3.c, u_input.a.x == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], all(vec4<bool>(global1.x, global3.d.x, global1.x, global2.x)))));
    let var_1 = Struct_2(global3.b, Struct_1(~firstLeadingBit(vec2<u32>(1u, 38656u))), 966f, !select(!global1.zzx, !select(global1.yyx, vec3<bool>(global1.x, global3.d.x, true), global3.d.x), !(!global1.x)));
    global1 = select(select(vec4<bool>(!global3.d.x, all(vec4<bool>(var_1.d.x, global2.x, false, false)), -var_0 >= abs(1i), !var_1.d.x), vec4<bool>(global1.x, var_1.d.x, false, all(global2.xx)), !vec4<bool>(var_1.d.x, global3.d.x, var_1.d.x, true)), !func_2(u_input.b.x & var_0, ~vec3<i32>(var_0, u_input.b.x, -23583i) << (~vec3<u32>(4294967295u, var_1.a.a.x, 54938u) % vec3<u32>(32u)), _wgslsmith_mod_u32(~var_1.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global3.a.a.x, 29877u), vec4<u32>(u_input.a.x, global3.a.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.a.x, 3u)], 3u)], global0[_wgslsmith_index_u32(var_1.b.a.x, 3u)]))), select(global3.d.yx, !global3.d.yx, var_1.d.x)), false);
    var var_2 = vec3<i32>(firstLeadingBit(var_0), _wgslsmith_clamp_i32(max(15918i, _wgslsmith_dot_vec4_i32(vec4<i32>(-21907i, 0i, var_0, -2704i) >> (vec4<u32>(1u, global0[_wgslsmith_index_u32(global3.b.a.x, 3u)], 0u, global3.a.a.x) % vec4<u32>(32u)), abs(vec4<i32>(u_input.b.x, u_input.b.x, 40043i, u_input.b.x)))), ~(~u_input.b.x & 18436i), ~_wgslsmith_div_i32(0i, var_0) | (i32(-1i) * -20040i)), 25154i);
    return global3.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = ~(min(u_input.a ^ vec3<u32>(0u, 4294967295u, 51133u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 17338u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, arg_1.a.b.a.x))) << (~(~vec3<u32>(arg_1.a.b.a.x, global3.a.a.x, 0u)) % vec3<u32>(32u)));
    let var_1 = Struct_1(~(vec2<u32>(4294967295u << (var_0.x % 32u), 20856u) ^ ~_wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, 9410u))));
    var var_2 = abs(~vec3<i32>(-2147483647i & u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x)) & ~abs(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)));
    global1 = func_2(_wgslsmith_clamp_i32(var_2.x, _wgslsmith_sub_i32(19507i, ~u_input.b.x >> (_wgslsmith_mod_u32(var_0.x, 4294967295u) % 32u)), _wgslsmith_add_i32(~(~var_2.x), 9056i)), countOneBits(vec3<i32>(~_wgslsmith_mod_i32(u_input.b.x, var_2.x), 18922i, u_input.b.x)), func_1().a.x, func_2(-_wgslsmith_mult_i32(var_2.x, u_input.b.x), vec3<i32>(0i, abs(select(u_input.b.x, -20312i, false)), firstTrailingBit(u_input.b.x) ^ (u_input.b.x | -1i)), 1u, select(select(func_2(var_2.x, vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), arg_1.a.a.a.x, vec2<bool>(arg_0.x, global2.x)).zz, global3.d.zy, vec2<bool>(global3.d.x, true)), global3.d.zy, vec2<bool>(arg_1.a.d.x, true))).yx);
    var_2 = vec3<i32>(abs(~(-1i)), 33145i, var_2.x);
    return Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, select(arg_1.b.a.x, 1u, true)), _wgslsmith_mod_vec2_u32(~vec2<u32>(global3.b.a.x, 4294967295u), vec2<u32>(0u, global3.b.a.x)))), func_1(), global3.c, !select(vec3<bool>(true, func_2(u_input.b.x, vec3<i32>(u_input.b.x, var_2.x, 0i), 4294967295u, global1.yw).x, false), select(!vec3<bool>(global1.x, arg_1.a.d.x, true), vec3<bool>(global2.x, global3.d.x, false), !vec3<bool>(arg_1.a.d.x, false, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(select(!global3.d, !(!vec3<bool>(true, global3.d.x, global3.d.x)), select(global1.yxw, vec3<bool>(global2.x, false, global3.d.x), true)), Struct_3(Struct_2(global3.b, func_1(), _wgslsmith_f_op_f32(-global3.c), select(vec3<bool>(true, true, global1.x), vec3<bool>(global2.x, global1.x, global1.x), global3.d.x)), global3.a), global3.d.yx), func_4(!vec3<bool>(false, all(vec4<bool>(false, true, false, global2.x)), false), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 6599u)), func_4(global2.zyy, Struct_3(Struct_2(global3.b, global3.b, 1661f, vec3<bool>(global3.d.x, true, global3.d.x)), global3.a), vec2<bool>(true, global3.d.x)).a, _wgslsmith_f_op_f32(f32(-1f) * -426f), vec3<bool>(global3.d.x, false, false)), global3.b), global3.d.xy).a);
    var var_1 = func_1();
    let var_2 = 1i;
    let var_3 = vec4<bool>(true, global2.x, true, false);
    var var_4 = Struct_4(Struct_2(var_0.b, global3.a, func_4(select(func_2(var_2, vec3<i32>(u_input.b.x, 20086i, 11291i), global0[_wgslsmith_index_u32(41139u, 3u)], global3.d.yy).xwy, global3.d, global1.wwx), Struct_3(func_4(global1.xyy, Struct_3(var_0.a, Struct_1(vec2<u32>(var_0.a.a.a.x, 1u))), global1.zz), func_4(vec3<bool>(var_3.x, false, false), var_0, var_3.xy).a), func_4(select(vec3<bool>(true, true, var_3.x), vec3<bool>(true, global1.x, global1.x), global3.d), Struct_3(var_0.a, Struct_1(u_input.a.xz)), select(global1.zy, var_3.xy, global1.x)).d.yz).c, vec3<bool>(true, global2.x, all(global3.d.yy))), var_0.b.a);
    var_4 = Struct_4(func_4(func_4(var_3.xwy, var_0, func_2(u_input.b.x, firstLeadingBit(vec3<i32>(u_input.b.x, -1i, 26320i)), global3.b.a.x & var_0.a.b.a.x, !vec2<bool>(var_4.a.d.x, var_3.x)).yy).d, Struct_3(var_4.a, func_4(global3.d, var_0, vec2<bool>(global1.x, true)).b), var_4.a.d.yx), _wgslsmith_mult_vec2_u32(u_input.a.yx, _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(62419u, var_4.a.a.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 18481u), var_1.a), vec2<u32>(58436u, var_4.a.a.a.x) ^ var_4.a.b.a)) & ~(~(~vec2<u32>(var_4.a.b.a.x, 12157u))));
    var var_5 = firstLeadingBit(~vec3<i32>(-1i, countOneBits(i32(-1i) * -1i), -var_2));
    let var_6 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_1.a.x, 7496u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.x, var_4.b.x), u_input.a.yy), !vec2<bool>(var_0.a.d.x, var_3.x)) >> (~(~vec2<u32>(101283u, 1u)) % vec2<u32>(32u)), min((vec2<u32>(global0[_wgslsmith_index_u32(global3.a.a.x, 3u)], global3.a.a.x) >> (var_1.a % vec2<u32>(32u))) ^ ~vec2<u32>(0u, var_0.a.b.a.x), countOneBits(vec2<u32>(63339u, 69444u) | vec2<u32>(var_1.a.x, global0[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_div_u32(var_1.a.x, countOneBits(0u)));
    var var_7 = Struct_4(Struct_2(func_1(), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(4335u, 1u) ^ vec2<u32>(var_0.b.a.x, 4294967295u), vec2<u32>(var_1.a.x, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c))), func_2(49361i, vec3<i32>(u_input.b.x, -var_5.x, _wgslsmith_mult_i32(var_5.x, var_5.x)), ~(~var_0.a.a.a.x), var_0.a.d.yz).yyy), ((vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], var_1.a.x) & ~global3.b.a) << (vec2<u32>(u_input.a.x << (4109u % 32u), reverseBits(var_1.a.x)) % vec2<u32>(32u))) | ~(firstTrailingBit(vec2<u32>(var_6.x, 24484u)) << (func_1().a % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(var_6.zx | var_1.a, global3.b.a));
}

