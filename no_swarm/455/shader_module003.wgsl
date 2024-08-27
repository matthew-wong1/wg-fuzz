struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(12260i, -17575i, 0i), vec3<u32>(22986u, 38995u, 4294967295u), vec2<bool>(true, false), 53428i);

var<private> global2: u32 = 1u;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32) -> vec2<bool> {
    var var_0 = vec4<i32>(global0.b.x, global1.b.x, -47429i, ~reverseBits(global0.b.x));
    let var_1 = Struct_1(global0.a, abs(global0.b ^ vec3<i32>(min(global1.b.x, u_input.c), global1.e, i32(-1i) * -2147483647i)), countOneBits(abs(global0.c) ^ abs(reverseBits(vec3<u32>(arg_1, 5427u, 1u)))), select(!(!global0.a.yw), vec2<bool>(any(vec2<bool>(true, true)), true), true), firstLeadingBit(global1.e));
    var_0 = firstTrailingBit(~(~vec4<i32>(global0.e, -23573i, global0.b.x, 9637i))) & countOneBits(select(vec4<i32>(-1i) * -vec4<i32>(4474i, global0.b.x, 11640i, 77004i), vec4<i32>(~u_input.c, select(-17309i, u_input.c, false), -1i, global0.e), global0.a));
    var var_2 = firstTrailingBit(-u_input.c);
    global0 = Struct_1(global0.a, var_1.b, vec3<u32>(16202u, 33894u, global1.c.x), !var_1.d, _wgslsmith_div_i32(_wgslsmith_add_i32(-var_0.x, countOneBits(_wgslsmith_mult_i32(var_0.x, global1.b.x))), 1i));
    return !select(vec2<bool>(true, true), vec2<bool>(true, var_1.a.x != all(vec3<bool>(true, global0.a.x, var_1.a.x))), select(!var_1.a.yz, select(!vec2<bool>(var_1.a.x, var_1.a.x), !vec2<bool>(var_1.a.x, global1.a.x), var_1.a.wx), vec2<bool>(global0.a.x && var_1.a.x, var_1.a.x)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = -1i;
    global0 = Struct_1(global0.a, global0.b, global1.c, select(!(!vec2<bool>(false, global0.d.x)), select(global1.a.zw, func_3(global1.c.x << (global1.c.x % 32u), global1.c.x), !func_3(u_input.d.x, global1.c.x)), !select(vec2<bool>(global1.a.x, false), vec2<bool>(true, global1.a.x), !global1.d)), -54174i);
    global2 = ~u_input.b.x;
    let var_1 = Struct_1(!global0.a, _wgslsmith_add_vec3_i32(global1.b, global1.b), ~vec3<u32>(countOneBits(global0.c.x), _wgslsmith_mult_u32(1u, 4294967295u) & global1.c.x, _wgslsmith_sub_u32(global1.c.x, ~global0.c.x)), vec2<bool>(-_wgslsmith_add_i32(arg_0, 1i) <= u_input.c, global0.a.x), min(abs(1i), _wgslsmith_add_i32(-firstLeadingBit(global1.b.x), 2147483647i)));
    let var_2 = -2147483647i;
    return var_1;
}

fn func_1() -> bool {
    var var_0 = -global1.b.x;
    global0 = Struct_1(!select(global0.a, vec4<bool>(true, global1.a.x, select(false, global0.d.x, global0.d.x), global1.d.x || true), global1.a.x), _wgslsmith_clamp_vec3_i32(global1.b, global1.b, vec3<i32>(firstTrailingBit(max(u_input.c, -1i)), -_wgslsmith_mult_i32(2147483647i, u_input.c), global0.e)), reverseBits(max(select(firstTrailingBit(global0.c), vec3<u32>(global0.c.x, u_input.b.x, 22535u), false | global0.d.x), countOneBits(u_input.d.zzx) >> (select(vec3<u32>(u_input.d.x, global0.c.x, 16952u), u_input.b, vec3<bool>(global1.a.x, global1.d.x, global0.a.x)) % vec3<u32>(32u)))), vec2<bool>(true, true), u_input.c);
    var var_1 = func_2(4977i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1314f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(854f + 727f) - 728f))));
    global1 = func_2(-18228i);
    return !(!select(global1.d.x, global0.d.x, all(!var_1.a.xxx)));
}

fn func_4(arg_0: bool) -> i32 {
    let var_0 = Struct_1(!select(global1.a, global1.a, false), func_2(_wgslsmith_mult_i32(1i, select(-22954i, -2147483647i, true) ^ (-2147483647i << (0u % 32u)))).b, global0.c, !select(global1.a.yw, select(global0.a.xz, vec2<bool>(arg_0, global0.d.x), global1.d), !vec2<bool>(true, global1.d.x)), ~(-2147483647i));
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1882f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-655f, 1000f)), 1f));
    let var_2 = Struct_1(select(select(!select(vec4<bool>(global1.d.x, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(global1.a.x, true, true, arg_0)), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -743f) > _wgslsmith_f_op_f32(var_1.x + var_1.x)), !vec4<bool>(false, arg_0 & arg_0, func_1(), true), global1.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(_wgslsmith_sub_i32(24560i, -56096i), firstLeadingBit(-1i), select(0i, u_input.c, var_0.a.x))), 0i, i32(-1i) * -2147483647i), select(firstLeadingBit(global0.c), vec3<u32>(6695u, 42423u, 26495u), vec3<bool>(var_0.d.x, global1.a.x & global0.a.x, !global1.a.x | var_0.d.x)), select(!global0.d, vec2<bool>(arg_0, var_0.d.x), func_3(var_0.c.x, ~27046u)), var_0.e);
    let var_3 = vec3<i32>(global1.b.x, 29928i << (reverseBits(u_input.a) % 32u), abs(select(-select(global1.e, 55953i, arg_0), ~5520i, true)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, _wgslsmith_mult_i32(var_2.b.x, min(global0.e, -4349i)), u_input.c), select(~(-vec3<i32>(var_2.e, -66119i, 16607i) | ~vec3<i32>(-12114i, 2147483647i, var_2.e)), global0.b, select(select(select(global0.a.xzz, vec3<bool>(var_0.a.x, false, arg_0), vec3<bool>(var_2.a.x, true, false)), vec3<bool>(true, global0.d.x, false), !vec3<bool>(true, arg_0, true)), func_2(_wgslsmith_div_i32(-2147483647i, 2147483647i)).a.wyw, all(select(vec3<bool>(true, true, false), global1.a.yzx, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(2147483647i, global0.e), func_4(func_1()), firstLeadingBit(func_2(~u_input.c << (func_2(1350i).c.x % 32u)).b.x));
    var var_1 = !func_2(-79080i >> (global0.c.x % 32u)).a.wyw;
    var var_2 = Struct_1(vec4<bool>(!any(global0.a.yyw) || ((global0.c.x >> (global1.c.x % 32u)) >= global1.c.x), all(vec3<bool>(any(global1.a), global1.a.x & global0.a.x, !var_1.x)), global1.d.x, true), (_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.b, global1.b, global1.b), firstTrailingBit(global1.b), ~global0.b) ^ _wgslsmith_clamp_vec3_i32(max(global0.b, global0.b), vec3<i32>(global1.e, -52420i, 3664i), ~vec3<i32>(global1.b.x, -2147483647i, var_0.x))) << (global1.c % vec3<u32>(32u)), vec3<u32>(1u, global1.c.x, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(global1.c.x, global1.c.x)), vec2<u32>(~35772u, global0.c.x))), global0.d, select(0i, 2147483647i, global1.d.x));
    var var_3 = func_2(3744i);
    global1 = func_2(~select(-16633i, global0.e & func_2(global0.e).b.x, !global0.d.x));
    global0 = Struct_1(select(!vec4<bool>(select(false, global0.d.x, false), func_1(), true, 1u >= global1.c.x), !(!func_2(1i).a), false & global1.d.x), vec3<i32>(_wgslsmith_mult_i32(global0.b.x, -11975i), ~(-1i), max(_wgslsmith_mod_i32(-global1.e, countOneBits(var_2.e)), global1.b.x)), vec3<u32>(_wgslsmith_sub_u32(var_2.c.x, firstTrailingBit(~global0.c.x)), ~firstTrailingBit(u_input.e), _wgslsmith_clamp_u32(1u, var_3.c.x, u_input.a)), global0.a.xx, ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.x, -1i, var_3.e, -15816i)), vec4<i32>(i32(-1i) * -38974i, func_2(-8588i).e, -var_0.x, select(2147483647i, 11212i, false))));
    var var_4 = Struct_1(vec4<bool>(!global0.a.x, any(!vec3<bool>(true, var_2.a.x, true)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -44837i, -57257i, u_input.c), abs(vec4<i32>(2147483647i, -48903i, var_3.b.x, global1.e))) != 21086i, var_2.a.x), countOneBits(var_3.b), vec3<u32>(_wgslsmith_dot_vec3_u32(select(var_3.c, countOneBits(var_3.c), vec3<bool>(true, var_1.x, true)), select(global0.c, vec3<u32>(4294967295u, global0.c.x, 1u), vec3<bool>(true, global1.d.x, global1.d.x)) << (u_input.b % vec3<u32>(32u))), ~(~1u), ~max(firstLeadingBit(1u), reverseBits(1u))), select(select(!vec2<bool>(false, var_2.d.x), func_3(4294967295u, 41418u), !var_3.d.x), !(!func_3(global1.c.x, global0.c.x)), vec2<bool>(!global0.d.x, true)), -26583i);
    var_1 = !vec3<bool>(!func_1(), func_2(~(~global0.e)).d.x, !global0.a.x);
    var var_5 = func_2(_wgslsmith_div_i32(firstTrailingBit(-2147483647i), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(global1.c.xx, abs(firstTrailingBit(u_input.b.zy))) >> (u_input.b.yy % vec2<u32>(32u)), _wgslsmith_add_i32(1i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(312f)))))) + -320f), _wgslsmith_div_vec4_i32((firstLeadingBit(vec4<i32>(18361i, var_5.e, -18492i, var_4.e)) & min(vec4<i32>(global1.b.x, var_2.b.x, global0.e, var_3.b.x), vec4<i32>(var_5.b.x, -2147483647i, -2147483647i, 9976i))) ^ ~vec4<i32>(14591i, var_2.b.x, 5805i, var_4.b.x), countOneBits(-(~vec4<i32>(var_0.x, var_5.e, -48092i, -2147483647i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-806f - 188f), _wgslsmith_f_op_f32(trunc(-373f)), _wgslsmith_f_op_f32(320f - 803f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1951f, 2590f, -1000f) * vec3<f32>(793f, 508f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1379f, 538f, -536f)))), all(global1.a.yzx))));
}

