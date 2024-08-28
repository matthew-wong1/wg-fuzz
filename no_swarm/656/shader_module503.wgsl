struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 23869i, -1i);

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false));

var<private> global2: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<f32>, arg_3: bool) -> bool {
    var var_0 = ~(~12981i);
    var var_1 = Struct_3(Struct_1(~(~firstTrailingBit(u_input.b)), ~vec2<u32>(1u, 1u), (vec2<i32>(-1i) * -global0.xx) >> ((countOneBits(vec2<u32>(5922u, 104938u)) | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<i32>(~global0.x, u_input.b.x) ^ -global0.xy, max(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a))), vec3<u32>(_wgslsmith_div_u32(u_input.a, 26363u), 8969u, u_input.a))));
    var var_2 = var_1.a.b;
    global2 = false;
    var var_3 = global0.x;
    return arg_3;
}

fn func_3(arg_0: f32, arg_1: bool) -> vec3<bool> {
    var var_0 = Struct_4(~u_input.b.zz, select(!select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, false, true), vec3<bool>(false, false, arg_1)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, true), false), select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, true, true), arg_1)), select(vec3<bool>(arg_1, any(vec2<bool>(true, true)), true), !vec3<bool>(true, false, arg_1), false), !vec3<bool>(arg_1, false, select(false, arg_1, arg_1))), select(select(!select(vec3<bool>(arg_1, false, false), vec3<bool>(false, arg_1, arg_1), arg_1), !select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, arg_1), true), true), select(vec3<bool>(false, true, true), vec3<bool>(!arg_1, true, true || arg_1), !select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_1, false), false)), !select(select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, true, true)), !vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, arg_1), true))), Struct_2(Struct_1(-_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 0i), u_input.b), ~vec2<u32>(4294967295u, 30142u) << ((vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), select(vec2<i32>(2147483647i, u_input.d), vec2<i32>(u_input.c, -59923i) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), arg_1 || arg_1), _wgslsmith_sub_vec2_i32(global0.yz, ~vec2<i32>(-2147483647i, global0.x)), firstTrailingBit(vec3<u32>(48487u, 27951u, u_input.a)) >> (vec3<u32>(1u, 14666u, u_input.a) % vec3<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(global0.x, global0.x), select(u_input.c, ~42129i, arg_1 || true), reverseBits(-global0.x), ~(-57737i & u_input.b.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-463f, arg_0), vec2<f32>(arg_0, -789f)))))), !select(!vec2<bool>(false, arg_1), vec2<bool>(false, true), select(vec2<bool>(true, arg_1), vec2<bool>(false, arg_1), vec2<bool>(true, true))), vec2<i32>(u_input.c, -25537i)));
    global0 = u_input.b;
    var_0 = Struct_4(max(-(~var_0.a), abs(vec2<i32>(18930i >> (0u % 32u), _wgslsmith_add_i32(u_input.d, u_input.c)))), vec3<bool>(true, true, true), select(vec3<bool>(false, false, arg_1 && true), select(vec3<bool>(true, func_2(arg_1, arg_0, vec3<f32>(409f, arg_0, var_0.d.c.x), true), arg_1), var_0.c, arg_1), !arg_1), Struct_2(var_0.d.a, firstLeadingBit(~var_0.d.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.c.x, -2300f))))), var_0.d.d, ~(global0.zx ^ ~var_0.d.b.xz)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1271f, arg_0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -216f, var_0.d.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1623f, var_0.d.c.x, var_0.d.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-116f, -165f, -1498f)))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-633f - arg_0), 472f))))));
    let var_2 = !any(!select(var_0.c, vec3<bool>(var_0.c.x, arg_1, true), select(true, var_0.c.x, true)));
    return select(select(var_0.b, var_0.c, -global0.x == _wgslsmith_dot_vec4_i32(max(var_0.d.b, vec4<i32>(2147483647i, u_input.b.x, global0.x, 6057i)), var_0.d.b)), select(vec3<bool>(true, true, var_0.c.x), !select(!vec3<bool>(var_0.b.x, true, arg_1), vec3<bool>(false, false, false), var_0.c), !(!select(vec3<bool>(true, var_0.b.x, false), vec3<bool>(var_0.c.x, var_2, true), var_0.c))), select(vec3<bool>(func_2(u_input.a == 0u, _wgslsmith_f_op_f32(sign(-1006f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1050f, -1415f, -1108f) + var_1), false), select(var_2, true, var_0.b.x), var_2), select(vec3<bool>(all(vec4<bool>(false, var_2, var_0.c.x, true)), !arg_1, !var_0.b.x), var_0.c, !select(vec3<bool>(var_0.b.x, arg_1, var_2), vec3<bool>(arg_1, arg_1, var_0.d.d.x), arg_1)), select(var_0.b, select(var_0.c, select(var_0.c, var_0.b, false), var_0.b), vec3<bool>(u_input.c != var_0.a.x, true, var_0.c.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(min(arg_1.e.x, ~arg_2.e.x), 11u)];
    var var_1 = Struct_4(max(_wgslsmith_add_vec2_i32(-(~arg_1.d), arg_1.a.xy), ~(~abs(global0.yx))), !select(var_0.zzw, !var_0.yxw, vec3<bool>(true, true, true)), !vec3<bool>(!(!arg_0.x), func_3(_wgslsmith_f_op_f32(select(421f, 347f, true)), true).x, func_2(!var_0.x, -449f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-839f, -515f, 479f), vec3<f32>(2121f, 1274f, -536f))), all(global1[_wgslsmith_index_u32(arg_2.e.x, 11u)]))), Struct_2(Struct_1(select(-vec3<i32>(-62985i, -59891i, -15585i), vec3<i32>(-2147483647i, -40263i, 2147483647i), func_2(arg_0.x, 510f, vec3<f32>(146f, -506f, -602f), var_0.x)), min(~arg_1.b, vec2<u32>(4330u, u_input.a) & arg_2.b), _wgslsmith_add_vec2_i32(-global0.zz, u_input.b.zz << (arg_2.e.zz % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.a.xy, vec2<i32>(32513i, global0.x)), ~vec2<i32>(-24061i, arg_2.a.x)), arg_2.e), min(min(vec4<i32>(70566i, global0.x, u_input.d, -14660i), abs(vec4<i32>(global0.x, 11983i, 2875i, 0i))), select(vec4<i32>(arg_2.a.x, global0.x, 21450i, global0.x), vec4<i32>(arg_2.a.x, 1i, u_input.d, -23950i), global1[_wgslsmith_index_u32(~arg_2.b.x, 11u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(948f, -1198f))))), vec2<bool>(true, var_0.x), arg_2.c));
    global1 = array<vec4<bool>, 11>();
    var var_2 = func_3(_wgslsmith_f_op_f32(var_1.d.c.x + var_1.d.c.x), true).xx;
    let var_3 = _wgslsmith_f_op_f32(var_1.d.c.x * -1686f);
    return var_1.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = func_4(select(select(vec3<bool>(func_2(true, -1085f, vec3<f32>(-291f, 1814f, -1259f), false), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), vec3<bool>(true, false, all(vec2<bool>(true, true))), !func_3(_wgslsmith_f_op_f32(-arg_2.x), true)), Struct_1(vec3<i32>(u_input.b.x, select(~0i, select(global0.x, 26096i, true), true), reverseBits(reverseBits(u_input.d))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.xz, vec2<u32>(u_input.a, 1u)), select(reverseBits(arg_1.yz), ~vec2<u32>(0u, u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), firstTrailingBit(-vec2<i32>(32814i, global0.x)), global0.xx, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~arg_1.yzy, ~arg_1.wzy), vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a), 0u, 6360u))), Struct_1(u_input.b, vec2<u32>(countOneBits(59492u), 4294967295u), -arg_0, vec2<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c, global0.x, -1i), 1i)), vec3<u32>(_wgslsmith_div_u32(u_input.a, firstLeadingBit(arg_1.x)), ~u_input.a, _wgslsmith_sub_u32(u_input.a & 0u, arg_1.x))), reverseBits(~6879u));
    var var_1 = Struct_3(Struct_1(~vec3<i32>(u_input.b.x, arg_0.x, _wgslsmith_sub_i32(arg_0.x, u_input.b.x)), select(var_0.a.e.zx, vec2<u32>(1u, 1u), !(false && var_0.d.x)), vec2<i32>(u_input.b.x | -arg_0.x, var_0.e.x), ~(~(~vec2<i32>(global0.x, -2147483647i))), var_0.a.e));
    var var_2 = select(arg_1, ~arg_1, var_0.d.x);
    var var_3 = var_1.a.d.x;
    var_1 = Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, -1i, 1i) & _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a.d.x, 2147483647i, var_1.a.c.x), var_0.a.a), abs(select(vec3<i32>(var_0.a.c.x, -2147483647i, var_1.a.a.x), vec3<i32>(0i, var_0.e.x, var_0.a.a.x), var_0.d.x))), ~vec2<u32>(4294967295u, 1462u) ^ firstTrailingBit(~vec2<u32>(var_2.x, var_0.a.b.x)), vec2<i32>(var_0.e.x, (-58386i | var_1.a.d.x) ^ func_4(vec3<bool>(true, false, false), Struct_1(u_input.b, vec2<u32>(78377u, 4294967295u), vec2<i32>(u_input.c, 58313i), vec2<i32>(var_0.b.x, -11005i), vec3<u32>(1u, 1u, 0u)), var_0.a, var_1.a.b.x).b.x), _wgslsmith_add_vec2_i32(global0.zy, vec2<i32>(countOneBits(var_1.a.c.x), ~var_1.a.c.x)), vec3<u32>(u_input.a, 0u, 78806u)));
    return select(select(select(!select(vec3<bool>(var_0.d.x, var_0.d.x, true), vec3<bool>(var_0.d.x, true, var_0.d.x), var_0.d.x), select(vec3<bool>(var_0.d.x, false, false), select(vec3<bool>(false, var_0.d.x, false), vec3<bool>(var_0.d.x, true, false), vec3<bool>(var_0.d.x, var_0.d.x, true)), vec3<bool>(true, false, false)), select(vec3<bool>(var_0.d.x, true, false), !vec3<bool>(var_0.d.x, var_0.d.x, false), false || var_0.d.x)), select(select(vec3<bool>(var_0.d.x, true, false), !vec3<bool>(false, var_0.d.x, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(true, false, var_0.d.x)), !all(vec4<bool>(var_0.d.x, var_0.d.x, false, false))), _wgslsmith_f_op_f32(-var_0.c.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), !(!(!(!vec3<bool>(false, var_0.d.x, var_0.d.x)))), var_0.d.x);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> Struct_3 {
    global0 = vec3<i32>(arg_2, 0i, 1i);
    var var_0 = vec2<i32>(-1i, -1i);
    global1 = array<vec4<bool>, 11>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.c.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.d.c.x, arg_1.d.c.x)))))) - _wgslsmith_f_op_f32(arg_1.d.c.x * _wgslsmith_f_op_f32(round(arg_1.d.c.x))));
    var_0 = vec2<i32>(1i, _wgslsmith_mult_i32(3268i, -_wgslsmith_clamp_i32(~arg_2, _wgslsmith_mult_i32(global0.x, arg_1.d.b.x), firstLeadingBit(1i))));
    return Struct_3(arg_1.d.a);
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    var var_0 = abs(u_input.a);
    var_0 = select(~1u, 47515u, !(~u_input.a <= 0u) & all(select(select(vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]), global1[_wgslsmith_index_u32(~u_input.a, 11u)], func_4(vec3<bool>(false, true, false), arg_0.a, arg_0.a, 4294967295u).d.x)));
    var var_1 = arg_0.a.d.x;
    let var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 64579u, u_input.a, func_4(vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.d, 17147i, -1i), arg_0.a.b, vec2<i32>(global0.x, u_input.c), u_input.b.xx, vec3<u32>(u_input.a, arg_0.a.e.x, 4294967295u)), Struct_1(arg_0.a.a, vec2<u32>(32447u, u_input.a), vec2<i32>(global0.x, u_input.c), vec2<i32>(global0.x, u_input.c), vec3<u32>(arg_0.a.e.x, 46415u, 4294967295u)), u_input.a).a.b.x), _wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.a, u_input.a, arg_0.a.e.x, 61102u), vec4<u32>(arg_0.a.e.x, 44533u, 0u, 12292u) >> (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<bool>(false, true, true, true)), ~(~vec4<u32>(arg_0.a.b.x, 1u, 4294967295u, 0u))));
    let var_3 = !any(select(global1[_wgslsmith_index_u32(func_5(abs(u_input.c), Struct_4(u_input.b.xz, vec3<bool>(false, true, false), vec3<bool>(false, false, false), Struct_2(Struct_1(u_input.b, vec2<u32>(arg_0.a.b.x, 0u), u_input.b.xy, arg_0.a.a.yz, arg_0.a.e), vec4<i32>(-27994i, arg_0.a.d.x, arg_0.a.a.x, -2993i), vec2<f32>(-1000f, 741f), vec2<bool>(true, true), arg_0.a.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.a.d.x, 0i, -1127i), vec4<i32>(arg_0.a.d.x, global0.x, 18579i, u_input.c))).a.e.x, 11u)], !select(global1[_wgslsmith_index_u32(arg_0.a.b.x, 11u)], vec4<bool>(false, false, true, true), true), select(select(global1[_wgslsmith_index_u32(arg_0.a.e.x, 11u)], vec4<bool>(false, false, true, false), true), global1[_wgslsmith_index_u32(arg_0.a.b.x, 11u)], select(vec4<bool>(false, false, true, false), global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(12961u, 11u)]))));
    return func_4(vec3<bool>(!(_wgslsmith_add_i32(-22805i, -303i) < ~global0.x), func_4(vec3<bool>(false | var_3, var_3, var_3), func_5(i32(-1i) * -1i, Struct_4(u_input.b.yz, vec3<bool>(var_3, true, var_3), vec3<bool>(var_3, true, var_3), Struct_2(arg_0.a, vec4<i32>(global0.x, u_input.d, 2147483647i, -24678i), vec2<f32>(-539f, -1284f), vec2<bool>(var_3, false), vec2<i32>(32008i, global0.x))), ~(-11679i)).a, arg_0.a, 40713u).d.x, true), arg_0.a, func_5(arg_0.a.c.x & arg_0.a.c.x, Struct_4(arg_0.a.d << ((arg_0.a.e.yx ^ vec2<u32>(16997u, arg_0.a.e.x)) % vec2<u32>(32u)), !func_3(1486f, false), func_1(~global0.yy, select(vec4<u32>(var_2, 69420u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, arg_0.a.b.x, 4294967295u), true), vec2<f32>(arg_1, -439f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 466f) + vec2<f32>(-2371f, arg_1))), func_4(select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, var_3, var_3), false), arg_0.a, func_5(31061i, Struct_4(vec2<i32>(u_input.d, -2265i), vec3<bool>(var_3, true, var_3), vec3<bool>(false, true, var_3), Struct_2(arg_0.a, vec4<i32>(1i, arg_0.a.a.x, arg_0.a.a.x, u_input.d), vec2<f32>(arg_1, arg_1), vec2<bool>(var_3, false), arg_0.a.a.xz)), -1i).a, 1u)), global0.x).a, 60652u).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(-2381f)), 1000f);
    let var_1 = Struct_2(func_6(func_5(_wgslsmith_dot_vec2_i32(u_input.b.xx | u_input.b.yx, vec2<i32>(global0.x, -2147483647i)), Struct_4(-vec2<i32>(-2147483647i, -8062i), vec3<bool>(true, true, true), func_1(vec2<i32>(17910i, global0.x), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<f32>(var_0.x, -1143f), vec2<f32>(-316f, var_0.x)), func_4(vec3<bool>(true, false, false), Struct_1(u_input.b, vec2<u32>(u_input.a, u_input.a), global0.xz, u_input.b.zz, vec3<u32>(u_input.a, u_input.a, 15134u)), Struct_1(vec3<i32>(global0.x, 0i, global0.x), vec2<u32>(u_input.a, u_input.a), u_input.b.xx, global0.zx, vec3<u32>(u_input.a, u_input.a, u_input.a)), 62239u)), _wgslsmith_mult_i32(u_input.c, -u_input.b.x)), var_0.x), firstLeadingBit(max(vec4<i32>(2147483647i, func_4(vec3<bool>(true, true, false), Struct_1(vec3<i32>(1i, global0.x, global0.x), vec2<u32>(0u, u_input.a), global0.yx, vec2<i32>(-22495i, -4706i), vec3<u32>(17424u, u_input.a, u_input.a)), Struct_1(u_input.b, vec2<u32>(50269u, 24696u), vec2<i32>(50806i, 0i), u_input.b.xz, vec3<u32>(u_input.a, 45169u, u_input.a)), u_input.a).e.x, ~(-2147483647i), 41045i >> (u_input.a % 32u)), ~vec4<i32>(global0.x, global0.x, u_input.d, global0.x) ^ vec4<i32>(u_input.b.x, u_input.c, global0.x, -50763i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0))), vec2<bool>(true, !(select(3812u, 32195u, false) >= min(41505u, 10832u))), -global0.yy);
    var var_2 = var_1;
    global1 = array<vec4<bool>, 11>();
    global1 = array<vec4<bool>, 11>();
    global1 = array<vec4<bool>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1860f, _wgslsmith_f_op_f32(var_1.c.x + var_2.c.x))))), _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(func_4(vec3<bool>(var_2.d.x, var_1.d.x, var_2.d.x), var_1.a, Struct_1(vec3<i32>(var_1.b.x, u_input.d, 30992i), vec2<u32>(83198u, var_2.a.b.x), vec2<i32>(-10793i, 1i), global0.xz, var_1.a.e), 13870u).c.x))))));
}

