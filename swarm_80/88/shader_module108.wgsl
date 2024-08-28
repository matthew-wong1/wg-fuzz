struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(-242f, vec4<f32>(-380f, 236f, 321f, 1000f), 41138i, vec3<u32>(0u, 14059u, 0u)), Struct_2(2473f, vec4<f32>(-1089f, 1728f, 1064f, -130f), 0i, vec3<u32>(4294967295u, 96231u, 72727u)), Struct_2(-1155f, vec4<f32>(2462f, -148f, 1000f, 1300f), 1i, vec3<u32>(67889u, 36841u, 1u)), Struct_2(-659f, vec4<f32>(-711f, 643f, -291f, 181f), -1i, vec3<u32>(13309u, 622u, 32473u)), Struct_2(-160f, vec4<f32>(-1000f, 323f, -433f, 664f), i32(-2147483648), vec3<u32>(1u, 1u, 1u)), Struct_2(-812f, vec4<f32>(-987f, 940f, 558f, -1198f), -45716i, vec3<u32>(34381u, 52015u, 88260u)), Struct_2(426f, vec4<f32>(437f, 1886f, 163f, 538f), 0i, vec3<u32>(80442u, 6413u, 1u)), Struct_2(113f, vec4<f32>(2009f, -520f, -1322f, 1388f), 1i, vec3<u32>(42030u, 6610u, 1u)), Struct_2(-196f, vec4<f32>(1000f, -1823f, -132f, 391f), -54300i, vec3<u32>(10191u, 4294967295u, 5079u)), Struct_2(-767f, vec4<f32>(334f, -1382f, -244f, -1190f), 2147483647i, vec3<u32>(0u, 46396u, 0u)), Struct_2(-374f, vec4<f32>(-669f, -404f, 1000f, 508f), -11202i, vec3<u32>(2811u, 58006u, 41093u)));

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(1165f, vec4<f32>(866f, 1011f, 1000f, 820f), 5524i, vec3<u32>(32660u, 4294967295u, 0u)), Struct_2(-1022f, vec4<f32>(207f, 2169f, -2003f, -1461f), 60837i, vec3<u32>(38175u, 18836u, 1u)), Struct_2(137f, vec4<f32>(1479f, -1715f, 1437f, 1006f), -4546i, vec3<u32>(4294967295u, 6081u, 17322u)), Struct_2(1042f, vec4<f32>(-1000f, 412f, -329f, -1724f), 1i, vec3<u32>(30446u, 14279u, 4294967295u)), Struct_2(1086f, vec4<f32>(1419f, -365f, -1787f, 1000f), -22308i, vec3<u32>(1u, 0u, 1u)), Struct_2(267f, vec4<f32>(1031f, 519f, 447f, 1128f), 4162i, vec3<u32>(25714u, 5292u, 24629u)), Struct_2(-1598f, vec4<f32>(117f, -1279f, 1555f, -292f), -10443i, vec3<u32>(4294967295u, 8480u, 42251u)), Struct_2(233f, vec4<f32>(1000f, -140f, 496f, -395f), 42244i, vec3<u32>(2856u, 13796u, 25021u)), Struct_2(-796f, vec4<f32>(-109f, 955f, 266f, 2000f), 32443i, vec3<u32>(2148u, 4294967295u, 1u)), Struct_2(260f, vec4<f32>(-1000f, 1713f, 2411f, -327f), 0i, vec3<u32>(4294967295u, 4294967295u, 67830u)), Struct_2(1778f, vec4<f32>(-443f, 1811f, -1423f, 1891f), -12016i, vec3<u32>(35063u, 4294967295u, 4981u)), Struct_2(264f, vec4<f32>(-1440f, -1207f, -552f, 257f), 2147483647i, vec3<u32>(1u, 26690u, 26762u)), Struct_2(-1000f, vec4<f32>(-360f, -644f, -1680f, -438f), -1i, vec3<u32>(0u, 4413u, 1u)), Struct_2(110f, vec4<f32>(409f, -552f, -381f, 196f), 24286i, vec3<u32>(4294967295u, 44210u, 4294967295u)), Struct_2(2229f, vec4<f32>(1242f, 574f, -1000f, 1251f), -12321i, vec3<u32>(4294967295u, 17454u, 0u)), Struct_2(1276f, vec4<f32>(286f, -935f, -1328f, 1000f), 2147483647i, vec3<u32>(12313u, 57952u, 5366u)), Struct_2(609f, vec4<f32>(-1303f, 113f, -1123f, -1641f), 43947i, vec3<u32>(45978u, 31734u, 4294967295u)), Struct_2(-197f, vec4<f32>(703f, 1029f, 861f, -1000f), 1i, vec3<u32>(0u, 0u, 0u)), Struct_2(146f, vec4<f32>(1463f, -1000f, -818f, -785f), 2147483647i, vec3<u32>(40199u, 69773u, 30750u)), Struct_2(586f, vec4<f32>(182f, -1119f, 191f, 593f), i32(-2147483648), vec3<u32>(15310u, 8339u, 4294967295u)), Struct_2(-254f, vec4<f32>(904f, -378f, 439f, -1111f), 16723i, vec3<u32>(1u, 37024u, 35121u)), Struct_2(-1176f, vec4<f32>(287f, 415f, -2309f, -1000f), 0i, vec3<u32>(2083u, 108418u, 0u)), Struct_2(-391f, vec4<f32>(-1000f, -235f, -966f, 782f), 0i, vec3<u32>(70477u, 65973u, 0u)), Struct_2(-1212f, vec4<f32>(-896f, -277f, 940f, -240f), 2836i, vec3<u32>(93864u, 1u, 24079u)), Struct_2(223f, vec4<f32>(-1442f, -475f, 397f, -333f), -14302i, vec3<u32>(22022u, 0u, 1u)));

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(u_input.a, ~4294967295u, ~(u_input.a << (0u % 32u)))));
}

