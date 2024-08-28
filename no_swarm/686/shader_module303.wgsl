struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<i32>(-23288i, -1i, 9433i), vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 12377i), vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(-11744i, 1i, 31337i), vec4<bool>(false, true, true, false)), Struct_2(vec3<i32>(i32(-2147483648), 21140i, -23362i), vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(1i, 2147483647i, 6376i), vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_2(vec3<i32>(1i, -47424i, 2290i), vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(0i, -1i, -16063i), vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(0i, -38671i, 1i), vec4<bool>(true, true, false, false)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, true, false)), Struct_2(vec3<i32>(30143i, 1i, -3643i), vec4<bool>(true, false, true, true)), Struct_2(vec3<i32>(1i, 67120i, -12007i), vec4<bool>(true, false, false, true)), Struct_2(vec3<i32>(1i, 14747i, -45846i), vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(-25164i, 1i, -8929i), vec4<bool>(false, false, false, true)), Struct_2(vec3<i32>(0i, -65079i, 20352i), vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(2147483647i, 9404i, -11064i), vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(15550i, i32(-2147483648), 1i), vec4<bool>(false, false, true, false)), Struct_2(vec3<i32>(i32(-2147483648), -1i, -38129i), vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(-16707i, 0i, 12174i), vec4<bool>(false, false, false, true)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -24012i), vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(0i, -1i, 2147483647i), vec4<bool>(true, true, true, true)), Struct_2(vec3<i32>(28729i, -13178i, 2147483647i), vec4<bool>(false, false, false, true)), Struct_2(vec3<i32>(5294i, 6242i, i32(-2147483648)), vec4<bool>(false, true, true, false)), Struct_2(vec3<i32>(1i, i32(-2147483648), 6901i), vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(39987i, -1i, -1i), vec4<bool>(false, true, true, false)), Struct_2(vec3<i32>(1i, 1i, 23812i), vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(-3293i, i32(-2147483648), 2147483647i), vec4<bool>(true, true, false, true)));

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 12260i), vec4<bool>(true, true, true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec2<bool> {
    global0 = array<Struct_2, 27>();
    global1 = Struct_1(!(!global1.b), global2.b.xx, select(~(~vec4<u32>(32978u, u_input.a.x, 1u, u_input.d) | (vec4<u32>(10665u, arg_1, 0u, global1.c.x) << (global1.c % vec4<u32>(32u)))), ~min(global1.c, ~global1.c), any(vec4<bool>(global2.b.x, global2.b.x, false, all(vec2<bool>(global2.b.x, global1.b.x))))), reverseBits(~48121u), _wgslsmith_mod_vec3_i32(global1.e, (vec3<i32>(-1i) * -vec3<i32>(u_input.c, u_input.c, global2.a.x)) << (~(vec3<u32>(global1.c.x, global1.c.x, global1.c.x) | vec3<u32>(1u, 21858u, global1.d)) % vec3<u32>(32u))));
    let var_0 = firstLeadingBit(~vec3<u32>(~(0u ^ arg_0.x), 4294967295u, 51757u));
    var var_1 = Struct_1(global2.b.wx, select(vec2<bool>(true | global1.b.x, !any(vec4<bool>(global2.b.x, global1.b.x, true, global1.b.x))), vec2<bool>(false || any(global2.b), !any(global2.b)), vec2<bool>(all(global1.b), _wgslsmith_f_op_f32(f32(-1f) * -499f) <= _wgslsmith_f_op_f32(sign(-184f)))), _wgslsmith_div_vec4_u32(max(global1.c, abs(global1.c)), global1.c) ^ global1.c, 43537u, abs(vec3<i32>(global2.a.x, max(-28210i, _wgslsmith_mod_i32(50833i, global1.e.x)), (global1.e.x | u_input.b.x) << (arg_1 % 32u))));
    global2 = global0[_wgslsmith_index_u32(arg_0.x, 27u)];
    return !select(var_1.b, !select(!global2.b.yz, var_1.b, all(vec4<bool>(false, true, global2.b.x, global2.b.x))), any(vec4<bool>(var_1.a.x, global1.a.x, false, var_1.a.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(select(func_3(~countOneBits(vec3<u32>(arg_2.x, u_input.a.x, arg_2.x)), u_input.d), select(!(!vec2<bool>(global2.b.x, global1.a.x)), arg_3.b.xz, false), !(any(global2.b) || !arg_3.b.x)), select(vec2<bool>(false, any(vec2<bool>(global1.a.x, global2.b.x)) && global2.b.x), global2.b.wx, false), ~global1.c, 0u, ~(vec3<i32>(~u_input.c, _wgslsmith_sub_i32(2147483647i, global2.a.x), -2147483647i) & arg_3.a));
    var var_1 = ~firstTrailingBit(~vec4<i32>(_wgslsmith_mult_i32(global1.e.x, u_input.c), arg_0.x | 1i, ~(-2147483647i), 25367i));
    global2 = global0[_wgslsmith_index_u32(var_0.d, 27u)];
    let var_2 = vec3<bool>(func_3(var_0.c.wxy << ((vec3<u32>(2662u, u_input.a.x, u_input.d) << (vec3<u32>(44479u, u_input.a.x, 28861u) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.c.x).x, any(select(func_3(~global1.c.ywz, ~28616u), !(!vec2<bool>(arg_3.b.x, false)), func_3(vec3<u32>(global1.d, var_0.d, var_0.c.x), var_0.c.x).x)), all(select(!(!vec4<bool>(var_0.a.x, false, global1.b.x, false)), arg_3.b, global1.b.x || true)));
    var var_3 = Struct_1(vec2<bool>(global2.b.x, true), vec2<bool>(true, true), ~(global1.c >> (global1.c % vec4<u32>(32u))), global1.c.x << (arg_2.x % 32u), vec3<i32>(_wgslsmith_mod_i32(-11332i, _wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.e), countOneBits(var_0.e))), var_1.x, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -1i), abs(vec2<i32>(63693i, arg_0.x))))));
    return Struct_1(!select(global2.b.wy, vec2<bool>(all(global1.b), arg_2.x <= 34653u), vec2<bool>(any(global2.b.wxz), arg_3.b.x)), vec2<bool>(any(!(!var_2)), !(!global2.b.x)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, ~0u), countOneBits(0u)), var_0.c.x, abs(~(~u_input.d)), min(var_0.d ^ 4294967295u, _wgslsmith_mod_u32(global1.d, 49785u) >> (~31659u % 32u))), var_0.c.x, -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.c, -global2.a.x), global1.e));
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = func_2(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~(-global1.e.zx), global2.a.zz), vec2<i32>(8788i, -9981i) << (vec2<u32>(_wgslsmith_sub_u32(arg_0, arg_0), ~arg_0) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), -640f), 649f), vec2<u32>(u_input.d ^ 0u, ~min(_wgslsmith_mod_u32(u_input.a.x, 0u), ~global1.c.x)), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]);
    global0 = array<Struct_2, 27>();
    var_0 = func_2(vec2<i32>(2147483647i, _wgslsmith_sub_i32((2147483647i & u_input.b.x) ^ global2.a.x, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(trunc(-492f))), _wgslsmith_mod_vec2_u32(~global1.c.ww, firstLeadingBit(vec2<u32>(u_input.d, global1.c.x) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)))) >> (~var_0.c.xx % vec2<u32>(32u)), Struct_2(global2.a, global2.b));
    global2 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(~39876u, _wgslsmith_div_u32(42163u, global1.d)), ~vec2<u32>(global1.d, arg_0))), 27u)];
    global2 = Struct_2(_wgslsmith_mod_vec3_i32(global2.a | _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.x, 1i, global1.e.x), global2.a), vec3<i32>(1i, global2.a.x, var_0.e.x)), -countOneBits(vec3<i32>(u_input.c, 0i, global1.e.x)) | global2.a), select(global2.b, select(select(select(global2.b, global2.b, true), global2.b, global2.b.x), vec4<bool>(func_3(vec3<u32>(var_0.c.x, global1.d, 56968u), arg_0).x, var_0.e.x < -9610i, all(global2.b), any(vec4<bool>(true, true, global1.b.x, true))), select(global2.b, select(global2.b, global2.b, vec4<bool>(true, true, var_0.a.x, false)), any(vec4<bool>(global1.a.x, global1.b.x, var_0.b.x, global1.a.x)))), func_3(global1.c.wwz, min(var_0.d & 24386u, ~arg_0)).x));
    return select(func_3(~min(vec3<u32>(global1.d, 13843u, global1.d), u_input.a), global1.d).x, all(global2.b.yzw), var_0.a.x && true) | false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c.x;
    var var_1 = _wgslsmith_f_op_f32(-1610f + -911f);
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1009f * -338f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-305f - -381f), _wgslsmith_f_op_f32(f32(-1f) * -1416f)))))));
    var var_3 = Struct_1(!(!global2.b.yz), !(!vec2<bool>(false, !global2.b.x)), vec4<u32>(countOneBits(u_input.a.x), ~firstTrailingBit(1u) ^ 4294967295u, _wgslsmith_dot_vec4_u32(global1.c, global1.c), _wgslsmith_mod_u32(1u, ~_wgslsmith_mult_u32(50556u, global1.c.x))), _wgslsmith_clamp_u32(~(~_wgslsmith_sub_u32(1u, u_input.d)), u_input.a.x, ~_wgslsmith_sub_u32(390u, 1u & global1.c.x)), select(reverseBits(-min(global1.e, vec3<i32>(u_input.c, u_input.c, -2147483647i))), global1.e, vec3<bool>(!func_1(global1.c.x), global1.a.x, global1.b.x)));
    let var_4 = var_3.c.zyx;
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.e);
}

