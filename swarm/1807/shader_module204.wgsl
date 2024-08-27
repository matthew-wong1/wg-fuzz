struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(6902u, 9271u, 20240u, 37683u), vec4<u32>(4294967295u, 73829u, 4294967295u, 79523u), vec4<u32>(53336u, 50663u, 19475u, 4294967295u), vec4<u32>(4294967295u, 18216u, 17288u, 0u), vec4<u32>(104760u, 4294967295u, 4294967295u, 0u), vec4<u32>(24314u, 16425u, 4675u, 4294967295u), vec4<u32>(3864u, 0u, 1u, 52222u), vec4<u32>(60089u, 0u, 1u, 1u));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(211f, 1964f), 21338i, vec4<i32>(19347i, 2147483647i, 8949i, -1i));

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: vec3<f32> = vec3<f32>(1293f, 1481f, -435f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(~u_input.b.x, Struct_2(Struct_1(global3.zz, _wgslsmith_div_i32(1i, u_input.a), -vec4<i32>(2147483647i, -19790i, 27326i, -2147483647i)), select(global2.xz, select(global2.zz, vec2<bool>(true, true), global2.x), select(!global2.yz, select(vec2<bool>(global2.x, global2.x), global2.xz, vec2<bool>(global2.x, false)), !global2.zz))), _wgslsmith_f_op_f32(max(global1.a.x, global3.x)));
    let var_1 = Struct_2(var_0.b.a, vec2<bool>(17664i != u_input.a, true));
    var_0 = Struct_3(_wgslsmith_clamp_u32(countOneBits(var_0.a), _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_add_u32(1u, 34004u)), abs(1u)), _wgslsmith_add_u32(var_0.a, u_input.b.x)), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c)), -790f), 2147483647i, vec4<i32>(global1.b, 1i, min(3137i, global1.c.x), _wgslsmith_clamp_i32(global1.c.x, -1i, u_input.a))), vec2<bool>(true, global2.x)), -248f);
    var var_2 = var_0.b.a;
    global2 = select(vec3<bool>(var_1.b.x, var_1.b.x, true), !select(select(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(var_1.b.x, false, var_0.b.b.x), vec3<bool>(false, var_0.b.b.x, var_1.b.x)), select(vec3<bool>(true, global2.x, false), vec3<bool>(true, var_0.b.b.x, var_1.b.x), true), true), select(select(vec3<bool>(false, var_1.b.x, var_0.b.b.x), vec3<bool>(var_1.b.x, global2.x, true), var_1.b.x), vec3<bool>(global2.x, var_1.b.x, false), !vec3<bool>(false, true, var_0.b.b.x)), !global2.x), vec3<bool>(var_0.b.b.x, true, var_1.b.x));
    return select(vec4<bool>(any(vec4<bool>(!var_0.b.b.x, true, any(global2.zy), all(vec3<bool>(var_1.b.x, true, false)))), true, _wgslsmith_dot_vec3_i32(var_1.a.c.zwz, vec3<i32>(-1i, var_2.c.x, -2147483647i)) == var_0.b.a.b, all(select(vec4<bool>(false, var_0.b.b.x, false, var_0.b.b.x), select(vec4<bool>(false, false, true, global2.x), vec4<bool>(global2.x, var_0.b.b.x, true, var_1.b.x), true), !vec4<bool>(global2.x, false, global2.x, global2.x)))), vec4<bool>(all(var_0.b.b), !all(!vec4<bool>(true, var_1.b.x, true, global2.x)), !(!(var_0.b.b.x || var_0.b.b.x)), var_0.a < ~1u), false);
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(vec2<u32>(0u, 5300u));
    var var_1 = global2.xz;
    let var_2 = global1.c.yx;
    var var_3 = select(vec3<bool>(false, true, any(func_3())), vec3<bool>(true, any(vec2<bool>(var_2.x != -1i, true)), true), var_1.x);
    let var_4 = Struct_3(~(~select(_wgslsmith_dot_vec2_u32(vec2<u32>(5072u, 17209u), vec2<u32>(4294967295u, 5690u)), 0u, true)), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(global3.yx, _wgslsmith_f_op_vec2_f32(-global3.zz)), -(1i >> (var_0.x % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, -11603i), global1.c, global1.c << (vec4<u32>(1u, 1u, 4294967295u, u_input.b.x) % vec4<u32>(32u)))), !var_3.yz), _wgslsmith_f_op_f32(select(-802f, global3.x, var_1.x)));
    return var_4.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.a.x, -860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f - -488f) + _wgslsmith_f_op_f32(560f * -1050f))), _wgslsmith_f_op_f32(-func_2().a.x)));
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 8u)];
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1338f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * -2149f)))));
    let var_2 = _wgslsmith_dot_vec2_i32(arg_0.c.zz, ~_wgslsmith_clamp_vec2_i32(firstTrailingBit(-global1.c.yz), ~global1.c.zz, ~(global1.c.xz | vec2<i32>(1i, -11069i))));
    let var_3 = var_1;
    return Struct_2(arg_0, !vec2<bool>(false, any(func_3())));
}

fn func_5(arg_0: Struct_2) -> f32 {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, arg_0.a.a.x);
    global0 = array<vec4<u32>, 8>();
    let var_0 = Struct_2(func_4(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), abs(arg_0.a.c.x), vec4<i32>(arg_0.a.c.x, arg_0.a.b, 17451i, 0i)), vec3<bool>(true, arg_0.b.x && false, any(vec4<bool>(global2.x, global2.x, global2.x, arg_0.b.x)))).a, !vec3<bool>(arg_0.b.x, false, true)).a, global2.yy);
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(998f, _wgslsmith_f_op_f32(-global1.a.x), arg_0.a.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-1911f * -130f), _wgslsmith_f_op_f32(f32(-1f) * -551f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, 436f, global3.x) * vec3<f32>(-141f, 1867f, 1492f)))) + vec3<f32>(-1857f, -1653f, _wgslsmith_f_op_f32(select(-498f, _wgslsmith_f_op_f32(trunc(global1.a.x)), !arg_0.b.x))));
    global3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2().a.x), _wgslsmith_div_f32(1f, global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f + _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_f32(arg_0.a.a.x * _wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))) - global1.a.x))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-794f)) + _wgslsmith_f_op_f32(trunc(1240f))))));
}

fn func_6(arg_0: bool, arg_1: f32) -> vec4<i32> {
    var var_0 = Struct_3(~(reverseBits(u_input.b.x << (4294967295u % 32u)) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_mult_i32(-global1.c.x, u_input.a), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, global1.c.x, global1.b), vec4<i32>(global1.c.x, -20033i, -2109i, u_input.a)), vec4<i32>(770i, -26608i, global1.b, global1.b))), vec2<bool>(all(vec3<bool>(true, false, true)), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-579f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1081f * arg_1))))));
    var var_1 = Struct_3(abs(_wgslsmith_mod_u32(9209u ^ var_0.a, firstTrailingBit(var_0.a))) & ~_wgslsmith_mod_u32(~u_input.b.x, 1u), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -656f)))));
    var var_2 = vec3<bool>(false, var_1.b.b.x & all(vec3<bool>(any(vec4<bool>(global2.x, var_1.b.b.x, true, arg_0)), true, func_3().x)), true);
    let var_3 = Struct_3(4294967295u, var_0.b, _wgslsmith_f_op_f32(-func_2().a.x));
    global1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 * var_3.c), _wgslsmith_f_op_f32(sign(var_1.c)))), var_3.b.a.c.x << (_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 63908u), vec2<u32>(u_input.b.x, var_0.a)), u_input.b) % 32u), select(var_3.b.a.c, vec4<i32>(-30039i, abs(87894i), 55132i << (var_0.a % 32u), 2147483647i), all(vec3<bool>(false, var_3.b.b.x, true)))), func_3().wzx).a;
    return vec4<i32>(firstTrailingBit(firstLeadingBit(15845i)), _wgslsmith_add_i32(~abs(var_0.b.a.c.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(10017i, u_input.a, global1.b, u_input.a), firstTrailingBit(vec4<i32>(-1i, var_3.b.a.c.x, 1i, var_1.b.a.b)))) & 12614i, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(global1.c.x), -(var_1.b.a.b & global1.c.x)), max(global1.c.zz, -max(vec2<i32>(1i, 7753i), global1.c.xz))), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a.a)), 0i, var_1.b.a.c), !func_3().zyw).a.c.x);
}

fn func_1(arg_0: vec3<u32>) -> Struct_3 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -243f, -629f) * vec3<f32>(1000f, 1698f, global3.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.x, -686f, -1231f), vec3<f32>(1921f, -559f, -216f))), !vec3<bool>(global2.x, false, global2.x))))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1513f + global3.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.a.x, global3.x, global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a.x, global1.a.x)) * _wgslsmith_f_op_f32(abs(global3.x))))));
    var_0 = global3.x;
    let var_1 = arg_0.x;
    global1 = Struct_1(global3.yz, u_input.a, func_6(any(!(!vec4<bool>(global2.x, false, false, global2.x))), _wgslsmith_f_op_f32(func_5(func_4(func_2(), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, false, false), true))))));
    return Struct_3(1u, func_4(func_2(), !vec3<bool>(!global2.x, !global2.x, global2.x)), 742f);
}

fn func_7(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(arg_2.b.a.a));
    var var_1 = arg_2.b.a;
    var var_2 = false;
    let var_3 = abs(arg_3.b);
    global2 = vec3<bool>(false, arg_2.b.b.x, true);
    return arg_2.b.a;
}

fn func_8(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    global2 = !select(vec3<bool>(false, true, arg_1.b.b.x), func_3().wzx, !vec3<bool>(arg_0.b.x, !global2.x, all(vec2<bool>(false, false))));
    global1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x * 719f), -222f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.a, vec2<f32>(global3.x, arg_0.a.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1105f, -747f))), vec2<bool>(false, arg_0.b.x))) * vec2<f32>(-1225f, _wgslsmith_f_op_f32(-global1.a.x)))), countOneBits(_wgslsmith_add_i32(~u_input.a, _wgslsmith_add_i32(arg_1.b.a.b, arg_0.a.b))) >> (abs(1u) % 32u), _wgslsmith_sub_vec4_i32(select(_wgslsmith_sub_vec4_i32(global1.c, arg_0.a.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-25066i, -26547i, 16147i, u_input.a), vec4<i32>(30965i, arg_1.b.a.b, arg_0.a.b, -1i)), false) & func_2().c, vec4<i32>(-55125i, _wgslsmith_dot_vec2_i32(vec2<i32>(11205i, 1i), global1.c.yx) | func_6(true, global3.x).x, ~_wgslsmith_sub_i32(arg_1.b.a.b, arg_1.b.a.c.x), _wgslsmith_mult_i32(1i, u_input.a))));
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + 947f)), -1361f)), global3.x), -func_4(func_4(arg_1.b.a, func_3().wzy).a, select(!vec3<bool>(true, arg_1.b.b.x, arg_0.b.x), !vec3<bool>(false, arg_0.b.x, false), func_3().xwz)).a.b, vec4<i32>(-2147483647i, -30550i, (3231i << (~arg_1.a % 32u)) & max(0i, func_1(vec3<u32>(0u, arg_1.a, 1u)).b.a.b), reverseBits(-_wgslsmith_mult_i32(-18540i, 37247i))));
    var var_0 = _wgslsmith_f_op_f32(max(1451f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1398f - _wgslsmith_f_op_f32(arg_1.b.a.a.x - -1394f)), _wgslsmith_f_op_f32(func_7(u_input.b.x, vec3<f32>(131f, global3.x, arg_0.a.a.x), arg_1, arg_0.a).a.x + arg_1.c)) + _wgslsmith_f_op_f32(max(global1.a.x, -1257f)))));
    global0 = array<vec4<u32>, 8>();
    return func_1(_wgslsmith_div_vec3_u32(reverseBits(~min(vec3<u32>(19466u, 1u, 1u), vec3<u32>(arg_1.a, arg_1.a, u_input.b.x))), abs(vec3<u32>(673u & arg_1.a, 4294967295u, 2602u)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 8>();
    let var_0 = ~1u;
    let var_1 = global1.c;
    global0 = array<vec4<u32>, 8>();
    let var_2 = func_8(Struct_2(func_7(71076u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.x, global1.a.x, global1.a.x)))), func_1(vec3<u32>(var_0, var_0, 58935u)), func_4(Struct_1(vec2<f32>(194f, -1418f), u_input.a, vec4<i32>(14937i, -3507i, var_1.x, u_input.a)), vec3<bool>(global2.x, true, true)).a), func_1(vec3<u32>(var_0, abs(u_input.b.x), ~0u)).b.b), func_1(vec3<u32>(u_input.b.x, 76969u, ~var_0)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a.x)));
    var var_4 = Struct_3(~abs(~10670u), var_2, var_2.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_8(var_2, Struct_3(~var_4.a, Struct_2(var_2.a, var_2.b), -1300f)).a.c.x, _wgslsmith_add_i32(1i, 1i), ~59894i), global1.c.wx, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_0, 0u, 1574u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 32142u, var_0), vec3<u32>(var_4.a, u_input.b.x, 0u))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, 19071u, u_input.b.x), vec3<u32>(4294967295u, 51557u, var_4.a), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)))));
}

