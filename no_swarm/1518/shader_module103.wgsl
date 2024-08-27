struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool = true;

var<private> global2: f32 = 1163f;

var<private> global3: i32 = 49643i;

var<private> global4: array<bool, 28> = array<bool, 28>(true, true, true, false, false, true, false, true, false, true, true, true, false, false, true, true, true, true, false, true, false, false, false, false, false, true, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(25317u, 70609u, !vec3<bool>(global4[_wgslsmith_index_u32(~u_input.a.x, 28u)], any(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(7904u, 28u)])), all(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 28u)], false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(987f, -744f, 1000f) * vec3<f32>(752f, -824f, 1608f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-521f, -1255f, 248f)), vec3<f32>(690f, 1443f, -1866f))), select(!vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(104454u, 28u)], false), select(vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec3<bool>(true, true, false), global4[_wgslsmith_index_u32(u_input.a.x, 28u)]), false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(2425f - 118f), _wgslsmith_f_op_f32(select(2115f, -1000f, global4[_wgslsmith_index_u32(1413u, 28u)]))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -748f), 264f, -308f)), vec3<bool>(!any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], false, global4[_wgslsmith_index_u32(u_input.a.x, 28u)])), true, !any(vec3<bool>(global4[_wgslsmith_index_u32(20196u, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)]))))), u_input.d.xx);
    var var_1 = var_0.d.x;
    var var_2 = vec3<bool>(var_0.c.x, true, var_0.c.x);
    return vec4<u32>(abs(~_wgslsmith_clamp_u32(0u, 30392u, u_input.a.x) >> (reverseBits(_wgslsmith_mod_u32(var_0.b, 12157u)) % 32u)), ~u_input.a.x, 15010u, ~4294967295u);
}

fn func_2() -> vec3<f32> {
    global4 = array<bool, 28>();
    var var_0 = ~func_3();
    global4 = array<bool, 28>();
    var var_1 = !select(select(!select(vec3<bool>(false, global4[_wgslsmith_index_u32(var_0.x, 28u)], false), vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 28u)], true), true), vec3<bool>(true, true, true), !select(vec3<bool>(global4[_wgslsmith_index_u32(40873u, 28u)], false, false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(0u, 28u)]), global4[_wgslsmith_index_u32(u_input.a.x, 28u)])), !vec3<bool>(false, true, global4[_wgslsmith_index_u32(0u, 28u)] || false), true);
    var_0 = ~(~vec4<u32>(_wgslsmith_mod_u32(42648u, var_0.x), ~16277u, _wgslsmith_div_u32(u_input.a.x, var_0.x), ~var_0.x)) ^ (vec4<u32>(~(u_input.a.x ^ 3560u), ~max(var_0.x, var_0.x), var_0.x, u_input.a.x) | ~(~(~vec4<u32>(u_input.a.x, 0u, 1067u, var_0.x))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(562f, 909f, 843f), vec3<f32>(-102f, -2003f, -412f))))) * vec3<f32>(1f, 1f, 1f)) + vec3<f32>(-261f, -639f, -372f));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.yx;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.d.x) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -390f), 557f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(f32(-1f) * -1009f)))));
    global1 = !((_wgslsmith_f_op_vec3_f32(func_2()).x != _wgslsmith_f_op_f32(-631f + arg_1.d.x)) && arg_1.c.x);
    global4 = array<bool, 28>();
    let var_2 = arg_1.d;
    return Struct_1(~_wgslsmith_div_u32(~var_0.x, u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(abs(~vec2<u32>(var_0.x, var_0.x)), ~select(u_input.a.xz, vec2<u32>(0u, u_input.a.x), arg_1.c.x)), vec2<u32>(firstTrailingBit(1u), 0u)), select(vec3<bool>(!arg_1.c.x, arg_1.c.x, true), vec3<bool>(true, false, all(!vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 28u)], arg_1.c.x, false))), false == (global4[_wgslsmith_index_u32(u_input.a.x, 28u)] || !global4[_wgslsmith_index_u32(21069u, 28u)])), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-150f, var_2.x)) * arg_1.d.x), -744f), u_input.d.yz);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2()).yx * vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-592f * var_0.d.x)));
    var var_2 = vec2<i32>(2147483647i, ~abs(~(-global0.x)));
    var var_3 = func_4(~(~vec3<i32>(global0.x, 2147483647i, 15071i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, ~arg_0.b, _wgslsmith_div_u32(1u, u_input.a.x)), _wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.a), vec3<u32>(57890u, 15472u, 58856u))) % vec3<u32>(32u)), func_4(u_input.d.yww, Struct_1(39872u, _wgslsmith_div_u32(~0u, 56211u), !(!var_0.c), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.d.x)), -314f, _wgslsmith_div_f32(var_0.d.x, -1291f)), arg_0.e)));
    global3 = var_0.e.x;
    return Struct_1(var_0.a, u_input.a.x, vec3<bool>(arg_0.e.x > -2147483647i, !(func_3().x <= _wgslsmith_mod_u32(24856u, u_input.a.x)), select(all(select(vec4<bool>(false, var_0.c.x, var_0.c.x, false), vec4<bool>(true, arg_0.c.x, true, true), global4[_wgslsmith_index_u32(var_3.a, 28u)])), !(!var_3.c.x), !var_0.c.x || func_4(u_input.d.zzy, Struct_1(1u, arg_0.a, var_3.c, arg_0.d, global0.zx)).c.x)), var_0.d, min(reverseBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.e.x, -2147483647i), vec2<i32>(arg_0.e.x, 1i) >> (vec2<u32>(73641u, 6587u) % vec2<u32>(32u)))), -vec2<i32>(_wgslsmith_add_i32(u_input.c, arg_0.e.x), max(global0.x, arg_0.e.x))));
}

fn func_1() -> Struct_1 {
    return func_5(func_4(countOneBits(select(~u_input.d.zzz, max(u_input.d.wyw, vec3<i32>(110489i, global0.x, 74512i)), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], false, global4[_wgslsmith_index_u32(4294967295u, 28u)]))), Struct_1(16368u | u_input.a.x, u_input.a.x, vec3<bool>(true, u_input.a.x <= 0u, global4[_wgslsmith_index_u32(903u, 28u)] || true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-547f, 1622f, -1000f) - vec3<f32>(-315f, 190f, 1822f)) - _wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-1i, -14964i)), vec2<i32>(global0.x, global0.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = min(_wgslsmith_clamp_vec4_i32(select(u_input.d, -vec4<i32>(2147483647i, global0.x, 2147483647i, -1i), func_5(arg_0).c.x), -countOneBits(vec4<i32>(-2147483647i, arg_0.e.x, arg_0.e.x, arg_1.e.x)) | abs(~vec4<i32>(arg_0.e.x, u_input.b, arg_0.e.x, -42341i)), select(u_input.d, vec4<i32>(0i, -arg_1.e.x, abs(-2147483647i), global0.x), !select(vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)], arg_0.c.x), vec4<bool>(false, false, true, true), false))), vec4<i32>(56461i, u_input.b, arg_1.e.x, _wgslsmith_clamp_i32(abs(arg_0.e.x), i32(-1i) * -u_input.d.x, _wgslsmith_div_i32(-arg_0.e.x, func_4(vec3<i32>(-35095i, arg_0.e.x, arg_1.e.x), arg_1).e.x))));
    return func_5(Struct_1(0u, arg_0.b, !func_5(Struct_1(21487u, 8936u, vec3<bool>(true, arg_0.c.x, true), vec3<f32>(arg_1.d.x, 162f, 896f), vec2<i32>(var_0.x, arg_0.e.x))).c, _wgslsmith_f_op_vec3_f32(arg_0.d - arg_0.d), -_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.d.x), vec2<i32>(arg_1.e.x, 0i))));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(func_4(-(vec3<i32>(arg_0.e.x, arg_0.e.x, -8399i) & abs(u_input.d.wwy)), func_4(abs(vec3<i32>(u_input.c, 7866i, -5379i)), arg_0)).d.x));
    var var_1 = func_4(abs(vec3<i32>(~global0.x, abs(~(-46381i)), 0i)), arg_0);
    global0 = vec3<i32>(abs(func_5(func_1()).e.x), (_wgslsmith_div_i32(-16081i, u_input.d.x) ^ _wgslsmith_sub_i32(global0.x, var_1.e.x)) | (-(~global0.x) & -arg_0.e.x), firstTrailingBit(~((arg_0.e.x << (23225u % 32u)) ^ global0.x)));
    let var_2 = u_input.c;
    global0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d.yyx, u_input.d.ywy, vec3<i32>(arg_0.e.x, ~global0.x, -24740i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-31291i, 0i, var_2) | vec3<i32>(u_input.d.x, 0i, 17227i), vec3<i32>(var_1.e.x, 33399i, var_2), !vec3<bool>(true, var_1.c.x, false)), vec3<i32>(_wgslsmith_mult_i32(-74774i, var_2), var_2, ~u_input.c)), select(u_input.d.wyy, _wgslsmith_add_vec3_i32(u_input.d.wwx, vec3<i32>(var_2, 2848i, 1i)) & abs(u_input.d.zyy), arg_0.c)), firstTrailingBit(-_wgslsmith_div_vec3_i32(u_input.d.wzy, select(vec3<i32>(arg_0.e.x, global0.x, -14248i), vec3<i32>(2147483647i, global0.x, 13357i), vec3<bool>(arg_2.x, false, true)))));
    return func_5(arg_0);
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.d.x)), arg_1.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x))));
    var var_0 = Struct_1(arg_0.b, u_input.a.x, !func_7(arg_0, u_input.a.x, vec3<bool>(arg_2, true, true)).c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * 790f) * arg_0.d.x)), arg_1.d.x, -1478f), abs(u_input.d.xy));
    let var_1 = arg_1;
    var var_2 = var_1;
    var var_3 = arg_1;
    return Struct_1(~countOneBits(max(~8502u, ~4294967295u)), var_2.a, vec3<bool>(func_6(func_4(_wgslsmith_add_vec3_i32(u_input.d.zxy, vec3<i32>(arg_0.e.x, var_0.e.x, arg_0.e.x)), Struct_1(38498u, 0u, var_0.c, vec3<f32>(-432f, 939f, -138f), vec2<i32>(1375i, u_input.b))), Struct_1(0u, var_3.a, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), var_3.c), _wgslsmith_f_op_vec3_f32(var_1.d + arg_1.d), _wgslsmith_sub_vec2_i32(vec2<i32>(8977i, var_3.e.x), vec2<i32>(19434i, arg_1.e.x)))).c.x, var_1.c.x, var_2.c.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.d))), -_wgslsmith_mod_vec2_i32(-_wgslsmith_add_vec2_i32(var_3.e, vec2<i32>(var_3.e.x, 23138i)), -vec2<i32>(59017i, -43i)));
}

fn func_9(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec2<u32>(u_input.a.x & 40465u, ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_3.a, arg_3.b) | 86711u, ~(~arg_0.a), 1u));
    let var_1 = _wgslsmith_dot_vec2_i32(func_5(func_1()).e, func_7(Struct_1(arg_3.b, u_input.a.x, select(!arg_0.c, vec3<bool>(true, true, false), func_6(arg_0, Struct_1(0u, 0u, vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], arg_3.c.x, global4[_wgslsmith_index_u32(4294967295u, 28u)]), arg_2, u_input.d.yy)).c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(260f, arg_3.d.x, arg_1), arg_3.d)), arg_0.e), 0u, func_8(func_8(func_4(vec3<i32>(arg_3.e.x, arg_3.e.x, arg_0.e.x), Struct_1(1u, 1u, vec3<bool>(global4[_wgslsmith_index_u32(22003u, 28u)], global4[_wgslsmith_index_u32(1u, 28u)], false), vec3<f32>(-843f, -385f, arg_0.d.x), global0.xy)), func_1(), global4[_wgslsmith_index_u32(2462u, 28u)] && true), Struct_1(0u, func_8(arg_3, arg_3, false).a, func_5(arg_3).c, vec3<f32>(138f, -1629f, arg_0.d.x), -arg_3.e), !arg_0.c.x).c).e);
    var var_2 = abs(u_input.d.zz);
    var var_3 = arg_0;
    let var_4 = arg_0;
    return StorageBuffer(_wgslsmith_sub_vec3_i32(min(vec3<i32>(func_5(arg_0).e.x, reverseBits(0i), global0.x), u_input.d.yyx >> (_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(0u, arg_3.b, var_3.a)) % vec3<u32>(32u))), vec3<i32>(firstLeadingBit(min(var_2.x, 29436i)), 13495i, _wgslsmith_sub_i32(-2147483647i, 1i))), vec2<u32>(~(~_wgslsmith_clamp_u32(arg_3.b, 77230u, 44919u)), var_4.b));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_9(func_8(func_7(func_6(func_1(), func_1()), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), !(!vec3<bool>(false, global4[_wgslsmith_index_u32(20537u, 28u)], global4[_wgslsmith_index_u32(3635u, 28u)]))), func_7(Struct_1(_wgslsmith_div_u32(0u, u_input.a.x), ~u_input.a.x, !vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(2988u, 28u)], true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-203f, -317f, -435f), vec3<f32>(2358f, 1000f, 612f), false)), _wgslsmith_mult_vec2_i32(vec2<i32>(-18411i, -1i), vec2<i32>(-63592i, 45786i))), u_input.a.x, func_7(func_7(Struct_1(u_input.a.x, 1u, vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec3<f32>(1249f, 344f, -455f), u_input.d.wz), u_input.a.x, vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(36787u, 28u)], true)), u_input.a.x | u_input.a.x, select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], false, global4[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(false, false, true), vec3<bool>(true, global4[_wgslsmith_index_u32(58832u, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)]))).c), func_5(Struct_1(u_input.a.x, 1u, vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(1u, 28u)]), vec3<f32>(-973f, 1000f, 1000f), global0.zy)).c.x), _wgslsmith_div_f32(641f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-564f, _wgslsmith_f_op_f32(937f - -459f)))), func_7(func_7(Struct_1(reverseBits(u_input.a.x), ~u_input.a.x, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-797f, -568f, 735f)), ~global0.yz), 1u, vec3<bool>(any(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(u_input.a.x, 28u)])), true, true)), 100981u, func_5(Struct_1(_wgslsmith_sub_u32(u_input.a.x, 1u), ~1u, func_8(Struct_1(17434u, u_input.a.x, vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], global4[_wgslsmith_index_u32(14665u, 28u)], true), vec3<f32>(1344f, -112f, 594f), u_input.d.xw), Struct_1(1u, 0u, vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 28u)], false, global4[_wgslsmith_index_u32(24787u, 28u)]), vec3<f32>(1199f, 1022f, 1199f), global0.yy), global4[_wgslsmith_index_u32(32257u, 28u)]).c, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1115f, 554f, 247f))), vec2<i32>(-57603i, -2147483647i))).c).d, func_7(Struct_1(func_7(Struct_1(0u, u_input.a.x, vec3<bool>(false, false, true), vec3<f32>(290f, -1536f, -1000f), u_input.d.ww), u_input.a.x, vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 28u)], global4[_wgslsmith_index_u32(12969u, 28u)], true)).b >> (~u_input.a.x % 32u), 0u, vec3<bool>(!global4[_wgslsmith_index_u32(1u, 28u)], true, true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1425f, -572f, -1013f) * vec3<f32>(-1882f, 240f, 614f)))), vec2<i32>(firstTrailingBit(-67991i), -global0.x)), ~_wgslsmith_div_u32(~u_input.a.x, 1u), !vec3<bool>(true, true, func_5(Struct_1(25463u, 20098u, vec3<bool>(true, true, false), vec3<f32>(426f, 1228f, 752f), global0.yy)).c.x)));
}

