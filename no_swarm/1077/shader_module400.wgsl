struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: bool = false;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(-3999i, 1i)), vec4<f32>(-593f, 894f, -144f, -752f), 4387u);

var<private> global3: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_3 {
    return Struct_3(arg_0, Struct_1(vec2<i32>(1895i, countOneBits(global0[_wgslsmith_index_u32(4294967295u, 25u)]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = vec3<u32>(~reverseBits(select(arg_2.a.c, global2.c, true)), ~37971u, reverseBits(arg_0.x)) << (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(50117u, 0u, arg_2.a.c) & reverseBits(vec3<u32>(arg_0.x, 11797u, 4294967295u))), ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(0u, global2.c, 30629u)), vec3<u32>(4294967295u, 4294967295u, 88105u), firstTrailingBit(vec3<u32>(0u, 15478u, 1u)))) % vec3<u32>(32u));
    let var_1 = func_2(Struct_2(global2.a, global2.b, 1u), -(~(~vec4<i32>(arg_1.x, -23536i, global2.a.a.x, arg_1.x))) >> (reverseBits(~(~vec4<u32>(arg_2.a.c, global2.c, 4294967295u, 0u))) % vec4<u32>(32u))).a.c;
    let var_2 = !(arg_2.a.c <= 35690u);
    var var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-30179i, 2797i, global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(var_1, 25u)]), -vec4<i32>(2147483647i, 0i, arg_2.b.a.x, -16808i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, global2.a.a.x, global2.a.a.x), -vec4<i32>(-36034i, 76300i, -14959i, 41322i), ~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -25682i))), firstLeadingBit(select(vec4<i32>(global2.a.a.x, arg_1.x, 14214i, arg_1.x), vec4<i32>(-33707i, u_input.a.x, global0[_wgslsmith_index_u32(global2.c, 25u)], u_input.a.x), vec4<bool>(false, var_2, false, false)) & vec4<i32>(-5580i, arg_2.b.a.x, arg_1.x, 1i)) >> (vec4<u32>(1u, 0u, var_1, ~countOneBits(53717u)) % vec4<u32>(32u)), -countOneBits(countOneBits(abs(vec4<i32>(24507i, arg_1.x, 13412i, 2147483647i)))));
    let var_4 = ~firstLeadingBit(vec4<u32>(arg_0.x, _wgslsmith_mod_u32(9543u, 67009u), global2.c, 0u));
    return vec3<bool>(true, any(!(!select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, var_2), var_2))), var_2);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_4(func_2(Struct_2(func_2(Struct_2(global2.a, global2.b, arg_0), ~vec4<i32>(2147483647i, 53365i, global2.a.a.x, 2324i)).a.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, global2.b.x, arg_2.x, global2.b.x))))), 2644u), -(~(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global2.a.a.x, 1i, global2.a.a.x) & vec4<i32>(global2.a.a.x, -203i, 2147483647i, -2147483647i)))).a, func_2(Struct_2(global2.a, global2.b, 4294967295u), -select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 10781i, -1i, 0i), vec4<i32>(-15963i, global2.a.a.x, -29123i, global2.a.a.x)), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 0i) ^ vec4<i32>(-1i, global0[_wgslsmith_index_u32(0u, 25u)], global2.a.a.x, global0[_wgslsmith_index_u32(global2.c, 25u)]), true)).a, _wgslsmith_dot_vec4_u32(~vec4<u32>(select(global2.c, global2.c, arg_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(global2.c, 1u)), ~22678u, ~12631u), vec4<u32>(arg_0, abs(arg_0), 65984u, _wgslsmith_clamp_u32(~global2.c, ~16492u, func_2(Struct_2(global2.a, vec4<f32>(-1341f, -748f, global2.b.x, -404f), global2.c), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 6254i, global2.a.a.x, 75267i)).a.c))), 0i, Struct_2(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global2.b), global2.b))), 1u));
    let var_1 = _wgslsmith_sub_i32(func_2(var_0.a, firstTrailingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2115i, 1i, global0[_wgslsmith_index_u32(16621u, 25u)]), vec4<i32>(0i, var_0.a.a.a.x, -49026i, global0[_wgslsmith_index_u32(58385u, 25u)])))).b.a.x, u_input.a.x);
    global3 = global2.c;
    global1 = all(!arg_1);
    global0 = array<i32, 25>();
    return var_0;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32) -> Struct_4 {
    var var_0 = func_4(select(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(26915u, global2.c), arg_0, 4294967295u, ~32730u), ~vec4<u32>(1u, 4294967295u, global2.c, 12041u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, 0u), vec4<u32>(8937u, global2.c, 15567u, 104891u)) % vec4<u32>(32u))), _wgslsmith_mod_u32(34848u, global2.c), false), !select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(false, false, false), !select(true, false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2.b.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -938f))))) - vec2<f32>(_wgslsmith_f_op_f32(max(arg_2, arg_2)), _wgslsmith_f_op_f32(-arg_1))), func_3(_wgslsmith_mult_vec2_u32(~(vec2<u32>(arg_0, global2.c) | vec2<u32>(23417u, arg_0)), ~vec2<u32>(93726u, 27144u)), u_input.a, func_2(Struct_2(Struct_1(global2.a.a), _wgslsmith_f_op_vec4_f32(-global2.b), global2.c), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global2.a.a.x, global2.a.a.x, 6987i), firstTrailingBit(vec4<i32>(global2.a.a.x, 49626i, u_input.a.x, global0[_wgslsmith_index_u32(global2.c, 25u)]))))));
    var_0 = Struct_4(Struct_2(func_4(global2.c >> (50118u % 32u), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global2.b.yx * global2.b.yy))), vec3<bool>(true, true, true)).b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1048f, -1154f, arg_2)) * vec4<f32>(arg_2, 1000f, arg_1, var_0.e.b.x)) * vec4<f32>(1388f, arg_2, arg_2, 889f)), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global2.c, 25885u, var_0.a.c), vec4<u32>(4294967295u, 1u, var_0.b.c, 4294967295u), vec4<u32>(var_0.c, 1u, arg_0, var_0.c)), _wgslsmith_add_vec4_u32(vec4<u32>(60639u, 0u, arg_0, arg_0), vec4<u32>(arg_0, global2.c, 0u, global2.c))))), Struct_2(func_2(func_2(var_0.b, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -37498i, 0i, -2147483647i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.c, 25u)], -2147483647i, global2.a.a.x))).a, vec4<i32>(u_input.a.x, global2.a.a.x ^ -38426i, -global2.a.a.x, var_0.e.a.a.x)).a.a, _wgslsmith_f_op_vec4_f32(-var_0.a.b), arg_0), func_2(Struct_2(global2.a, _wgslsmith_f_op_vec4_f32(step(var_0.b.b, _wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(arg_1, -1000f, arg_2, -1035f)))), 23888u), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.a.a.a.x, var_0.b.a.a.x, -129i), select(vec4<i32>(-2147483647i, 1i, var_0.e.a.a.x, 1i), vec4<i32>(38780i, 0i, 1i, 2336i), false)) >> (min(~vec4<u32>(35421u, 1u, 4294967295u, arg_0), ~vec4<u32>(var_0.b.c, 47121u, arg_0, 620u)) % vec4<u32>(32u))).a.c, -(1i | (firstTrailingBit(global0[_wgslsmith_index_u32(44999u, 25u)]) ^ -1i)), var_0.b);
    let var_1 = global2.b.zyx;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, global2.b.x)))))) == 769f;
    let var_3 = all(select(select(vec4<bool>(var_2, false, true, !var_2), select(vec4<bool>(var_2, false, true, var_2), vec4<bool>(var_2, false, false, true), !var_2), false), vec4<bool>(!(1i >= var_0.e.a.a.x), true, 20991u >= global2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, 0u, arg_0), vec4<u32>(4294967295u, 4294967295u, 51760u, 34874u)) >= 1u), any(vec4<bool>(true, !var_2, true, true))));
    return Struct_4(func_4(func_2(var_0.b, ~vec4<i32>(var_0.a.a.a.x, global0[_wgslsmith_index_u32(arg_0, 25u)], 5095i, var_0.b.a.a.x)).a.c | var_0.b.c, select(!(!vec3<bool>(true, var_3, false)), vec3<bool>(var_3, var_3, true), var_2 && var_3), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(-var_1.x))), vec3<bool>(!select(var_2, var_2, true), -19431i < u_input.a.x, var_3 && var_3)).a, Struct_2(global2.a, global2.b, 4294967295u), global2.c, -2147483647i, func_2(var_0.a, ~(-vec4<i32>(0i, 0i, u_input.a.x, global0[_wgslsmith_index_u32(var_0.b.c, 25u)])) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, var_0.b.a.a.x, global2.a.a.x), vec4<i32>(global0[_wgslsmith_index_u32(global2.c, 25u)], global2.a.a.x, -1i, global0[_wgslsmith_index_u32(55690u, 25u)])), -vec4<i32>(-25602i, -5096i, -42014i, u_input.a.x))).a);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    global0 = array<i32, 25>();
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(~((arg_3.x >> (global2.c % 32u)) & 1i), ~_wgslsmith_mult_i32(u_input.a.x, ~(-54059i))), _wgslsmith_mod_i32(arg_0.e.a.a.x, func_2(func_4(21610u, vec3<bool>(true, arg_1.x, false), vec2<f32>(arg_0.b.b.x, -366f), vec3<bool>(true, arg_1.x, true)).e, _wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.a.x, arg_0.b.a.a.x, global0[_wgslsmith_index_u32(76600u, 25u)], 1i) | arg_3, vec4<i32>(arg_0.e.a.a.x, 2147483647i, global2.a.a.x, 0i) << (vec4<u32>(58639u, 72108u, 18645u, global2.c) % vec4<u32>(32u)))).a.a.a.x));
    var var_1 = Struct_1(~(((vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(arg_0.c, arg_0.b.c) % vec2<u32>(32u))) & vec2<i32>(-1i, -12680i)) | vec2<i32>(1i, -1i)));
    var_1 = arg_0.e.a;
    var var_2 = any(!(!arg_1));
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(func_1(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global2.c, 0u), vec2<u32>(30111u, global2.c), true), ~abs(vec2<u32>(global2.c, 1u))), _wgslsmith_f_op_f32(step(1472f, global2.b.x)), 538f), select(vec2<bool>(true, true), vec2<bool>(!(37206u >= global2.c), true), !any(func_3(vec2<u32>(4294967295u, global2.c), vec3<i32>(40105i, global0[_wgslsmith_index_u32(28386u, 25u)], u_input.a.x), Struct_3(Struct_2(Struct_1(u_input.a.xz), vec4<f32>(-223f, -798f, 487f, global2.b.x), global2.c), Struct_1(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(32035u, 25u)])))).yx)), _wgslsmith_f_op_f32(func_4(func_2(func_1(global2.c, -1939f, 354f).a, abs(vec4<i32>(2147483647i, global2.a.a.x, 20134i, global2.a.a.x))).a.c, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, 489f)), vec3<bool>(true, true, true)).b.b.x - -1000f), vec4<i32>(reverseBits(~(u_input.a.x >> (global2.c % 32u))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, global0[_wgslsmith_index_u32(global2.c, 25u)], global0[_wgslsmith_index_u32(9514u, 25u)], 11734i), vec4<i32>(global2.a.a.x, 1i, 0i, u_input.a.x) << (vec4<u32>(global2.c, 0u, global2.c, 0u) % vec4<u32>(32u))), vec4<i32>(-u_input.a.x, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(85299u, 25u)], -1i), -1991i, ~2147483647i)), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(23456i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, global0[_wgslsmith_index_u32(global2.c, 25u)], 1i), vec4<i32>(global0[_wgslsmith_index_u32(global2.c, 25u)], 2147483647i, global2.a.a.x, 10014i)), 1i), global2.a.a.x));
    let var_0 = ~firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(75185u, 4294967295u), ~_wgslsmith_mult_u32(global2.c, global2.c), 4294967295u, 12742u ^ global2.c));
    var var_1 = func_2(func_4(~4027u, vec3<bool>(true, func_3(var_0.xz, vec3<i32>(-41419i, global2.a.a.x, 1i), Struct_3(Struct_2(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(42215u, 25u)], global0[_wgslsmith_index_u32(global2.c, 25u)])), vec4<f32>(global2.b.x, global2.b.x, -1016f, -1663f), 4294967295u), global2.a)).x || (1i <= global0[_wgslsmith_index_u32(global2.c, 25u)]), false), global2.b.wy, vec3<bool>(true, true, true)).e, abs(~max(vec4<i32>(-13324i, global0[_wgslsmith_index_u32(29941u, 25u)], global0[_wgslsmith_index_u32(69474u, 25u)], 0i) & vec4<i32>(-30883i, global0[_wgslsmith_index_u32(32524u, 25u)], -2147483647i, global2.a.a.x), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(global2.c, 25u)], 1i, -9282i))));
    let var_2 = vec2<bool>((reverseBits(_wgslsmith_div_i32(39585i, -21371i)) << (_wgslsmith_div_u32(max(7577u, 9042u), _wgslsmith_mod_u32(var_1.a.c, global2.c)) % 32u)) > ~(i32(-1i) * -u_input.a.x), false);
    global3 = abs(0u) << (var_0.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~0u & abs(var_1.a.c));
}

